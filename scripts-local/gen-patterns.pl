#!/usr/bin/env perl

use strict;
use warnings;
use v5.16;

use File::Slurp;

my $doc_dir = 'doc';

my $lang_cfg = 
{
	'c' => 
	{
		'suffix_prog' => '.c',
		'suffix_class' => '.c',
		'comment' => '//',
	},
	'cxx' => 
	{
		'suffix_prog' => '.cpp',
		'suffix_class' => '.cpp',
		'comment' => '//',
	},
	'coffeescript' => 
	{
		'suffix_prog' => '.coffee',
		'suffix_class' => '.coffee',
		'comment' => '#',
	},
	'javascript' => 
	{
		'suffix_prog' => '.js',
		'suffix_class' => '.js',
		'comment' => '//',
	},
	'perl' => 
	{
		'suffix_prog' => '.pl',
		'suffix_class' => '.pm',
		'comment' => '#',
		'package_tmpl' => 'package --pkg--;',
		'package_delim' => '::',
	},
	'java' => 
	{
		'suffix_prog' => '.java',
		'suffix_class' => '.java',
		'comment' => '//',
		'package_tmpl' => 'package --pkg--;',
		'package_delim' => '.',
	}
};


my $cfg =
{
	'Creational' =>
	{
		'Abstract_Factory' => 1,
		'Builder' => 1,
		'Factory_Method' => 1,
		'Prototype' => 1,
		'Singleton' => 1,
		##'Object_pool' => 1
	},

	'Structural' =>
	{
		'Adapter' => 1,
		'Bridge' => 1,
		'Composite' => 1,
		'Decorator' => 1,
		'Facade' => 1,
		'Flyweight' => 1,
		'Proxy' => 1
	},

	'Behavioral' =>
	{
		'Chain_Of_Responsibility' => 1,
		'Command' => 1,
		'Interpreter' => 1,
		'Iterator' => 1,
		'Mediator' => 1,
		'Memento' => 1,
		'Observer' => 1,
		'State' => 1,
		'Strategy' => 1,
		'Template_Method' => 1,
		'Visitor' => 1,
	}
};

&build_cfg($cfg,$_) for @ARGV;
&make_lang_files($cfg, 'java','javascript','c','cxx','perl','coffeescript');
#&make_doc_files($cfg);
exit;

sub make_doc_files
{
	my $cfg = shift;
	mkdir $doc_dir unless -d $doc_dir;
	for my $pattern_dir( keys %$cfg)
	{
		mkdir "$doc_dir/$pattern_dir" unless -d "$doc_dir/$pattern_dir";
		for my $pattern (keys %{$cfg->{$pattern_dir}})
		{
			my $sample_file = $cfg->{$pattern_dir}->{$pattern};
			if( $sample_file eq '1' )
			{
				print STDERR "No sample for $pattern_dir - $pattern\n";
				next;	
			}
			File::Slurp::write_file("$doc_dir/$pattern_dir/$pattern.txt",$sample_file);
		}
	}	
}

sub make_lang_files
{
	my $cfg = shift;
	for my $lang (@_)
	{
		my $per_lang_cfg = $lang_cfg->{$lang};
		mkdir $lang unless -d $lang;
		mkdir "$lang/src" unless -d "$lang/src";
		my $lang_src_dir = "$lang/src";
		my $pkg_tmpl = exists $per_lang_cfg->{package_tmpl} ? $per_lang_cfg->{package_tmpl}  : 0;
		my $pkg_delim= exists $per_lang_cfg->{package_delim} ? $per_lang_cfg->{package_delim}  : 0;
		my $add_pkg = defined $pkg_tmpl && defined $pkg_delim;
		for my $pattern_dir( keys %$cfg)
		{
			mkdir "$lang_src_dir/$pattern_dir" unless -d "$lang_src_dir/$pattern_dir";
			for my $pattern (keys %{$cfg->{$pattern_dir}})
			{
				mkdir "$lang_src_dir/$pattern_dir/$pattern" unless -d "$lang_src_dir/$pattern_dir/$pattern";
				my $sample_files = $cfg->{$pattern_dir}->{$pattern};
				if( (not ref $sample_files ) and $sample_files eq '1' )
				{
					print STDERR "No sample for $pattern_dir - $pattern\n";
					next;	
				}
				File::Slurp::write_file("$lang_src_dir/$pattern_dir/$pattern/README.md",$sample_files->{README});
				my $klasses = $sample_files->{klasses};
				my($klass_name,$klass_body);
				while( ($klass_name,$klass_body) = each %$klasses)
				{
					if( $add_pkg)
					{
						my $tmp  = $pkg_tmpl;
						$tmp =~ s/--pkg--/join($pkg_delim,($pattern_dir,$pattern))/e;
						$klass_body = "$tmp\n\n$klass_body";
					}
					File::Slurp::write_file(
						"$lang_src_dir/$pattern_dir/$pattern/$klass_name" .
							(($klass_body =~ /void\s+main/s) ? $per_lang_cfg->{suffix_prog} : $per_lang_cfg->{suffix_class}) ,
							$klass_body);
				}
			}
		}
	}	
}


sub build_cfg
{
	my($cfg,$f) = @_;
	my @data = split "\n",File::Slurp::read_file($f);

	my $qr_sep = qr/[\*]{12,}/;

	my $n = 0;	
	my $fn;
	my @body;
	for(@data)
	{
		if( $_ =~ $qr_sep )
		{
			$n++;
			&add_to_cfg($cfg,$fn,\@body,&build_classes(\@body)) if defined $fn && scalar(@body) > 0;
			$fn = undef;
			@body = ();
			next;
		}
		elsif( (not defined $fn) && !/^\s*$/ )
		{
			chomp;
			$fn = $_;
			next;
		}
		elsif(defined $fn)
		{
			push @body,$_;
		}
	}
	&add_to_cfg($cfg,$fn,\@body,&build_classes(\@body)) if defined $fn && scalar(@body) > 0;
}

sub build_classes
{
	my($lines) = @_;
	my $retval = {};
	my $klass_name = undef;
	my @klass_body = ();
	for(@$lines)
	{
		push @klass_body,$_;
		if(/^[}]/ && defined $klass_name)
		{
			$retval->{$klass_name} = &comment_non_source_lines(\@klass_body);
			$klass_name = undef;
			@klass_body = ();
		}
		
		elsif(/^(?:public\s+|abstract\s+)*(?:class|interface)/)
		{
			if(defined $klass_name)
			{
				$retval->{$klass_name} = &comment_non_source_lines(\@klass_body);
				$klass_name = undef;
				@klass_body = ();
			}
			($klass_name) = $_ =~ m/^(?:public\s+|abstract\s+)*(?:class|interface)\s+(.*)/;
			die "not able to parse class from $_" unless defined $klass_name;
			$klass_name =~ s/\s+(?:extends|implements)//;
			$klass_name =~ s/^\s+//;
			$klass_name =~ s/\s+.*$//;
			print "klass name $klass_name\n";
		}
	}
	$retval->{$klass_name} = &comment_non_source_lines(\@klass_body) if defined $klass_name;
	$retval
}

## todo add in per-lang comment syntax
sub comment_non_source_lines
{
	join "\n",map
	{
		/^\s*$/  ? $_ :
		/^\s+\S/ ? $_ :
		/^(?:import|public|abstract|class|interface|[{}])/ ? $_ : "//$_"
	}@{$_[0]}
}


sub add_to_cfg
{
	my($cfg,$fn,$body,$klasses) = @_;
	
	## take name of pattern in file ($fn) and munge into a valid filename
	$fn =~ s/^.*java\s*design\s*patterns?\s*//i;
	$fn =~ s/\(.*$//;
	$fn =~ s/[^0-9A-Za-z]/_/g;

	## take munged filename and lookup in $cfg at top
	my $grp = &_find_grp($cfg,$fn);
	return unless $grp;

	printf "%s found %d classes\n",$fn, scalar(keys %$klasses);
	$grp->{$fn} = {
		'klasses' => $klasses, 
		'README' => join("\n",@$body),
	};
}

sub _find_grp
{
	my($cfg,$search) = @_;
	for my $grp (keys %$cfg)
	{
		for my $key( keys %{$cfg->{$grp}})
		{
			return $cfg->{$grp} if $key eq $search;
		}
	}
}
