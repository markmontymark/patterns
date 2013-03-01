#!/usr/bin/env perl

use strict;
use warnings;

# Required CPAN Modules
# Net::SFTP
# IO::Prompt
# File::Spec
# File::Path
use Net::SFTP;
use IO::Prompt;
use File::Spec;
use File::Path; 

my $cfg = {
	basedir => 'pulldowns',
};

my($host,$user,$pw) = &prompts_for_input(@ARGV);
die &usage unless defined $host && defined $user && defined $pw;

my $pulldown_dir = &get_pulldown_dirname($cfg,$host);
print "pulldown_dir: $pulldown_dir\n";
die "Dir $pulldown_dir already exists! Exitting..\n" if -d $pulldown_dir;

my $sftp = new Net::SFTP($host, user=>$user, password=>$pw);
die "No sftp " unless $sftp;

File::Path::mkpath($pulldown_dir) || die "Can't create dir $pulldown_dir, $!\n";
chdir $pulldown_dir || die "Can't chdir $pulldown_dir, $!\n";

&pulldown($sftp,$pulldown_dir);
exit(0);


# **pulldown** is the main driver of the script and takes two args, `$dir` and `$sftp`.
# Args:
#	`$dir` is created by the script with format: host--datetime
#	`$sftp` is a Net::SFTP object created from the host, username, and password cmdline args (or prompted input)
sub pulldown
{
	my($dir,$sftp) = @_;
}

# **usage** is a sub to return cmdline usage of the script.
# Usage is:
#
#		./pulldowns.pl [host [username [password]]]
#
# In English, that is simply either:
#	- pass nothing
#	- or optionally pass, in order, `host` `username` `password`, but you can leave
#		password off, or username and password off, and the script will prompt you
#		for those inputs
#
#	**Preferred** usage is `./pulldowns.pl host` and allow the prompts to take username and password
#
sub usage 
{
	join "\n","Usage: $0 [<host>] [<user>]",@_,"\n"
}

# **prompts_for_input** uses the `IO::Prompt` CPAN module to prompt for 
# any args that were passed on the cmdline, in order of:
#	- host
#	- username
#	- password
# Will echo input except for the password prompt
#
#	input: @ARGV which is read, in order, as the host, username and password 
#		you want to use to connect via Net::SFTP
#
#	returns: a list of values, `(host,username,password)`
sub prompts_for_input
{
	my($host,$user,$pw) = @_;
	$host = prompt('Host: ') unless defined $host;
	$user = prompt('Username: ') unless defined $user;
	$pw   = prompt('Password: ',-echo=>0) unless defined $pw;
	($host,$user,$pw)
}

# **get_iso8601_datetime** returns the current date and time in ISO8601
# format with any non-digits chars set to '-'
sub get_iso8601_datetime
{
	my @t = localtime;
	$t[5]+=1900;
	$t[4]++;
	@t = reverse @t[0..5];
	join '-',(map{ $_ > 9 ? $_ : '0'.$_ }@t)
}

# **get_pulldown_dirname** Takes the host arg and appends '--' and the datetime
# to create a unique name that will be used as a directory name to be created later on
# This pulldown directory name is the directory where your site downloaded.
sub get_pulldown_dirname 
{
	my($cfg,$host) = @_;
	my $dt = &get_iso8601_datetime;
	$dt   =~ s/[^0-9A-Za-z\-\.]/_/g;
	$host =~ s/[^0-9A-Za-z\-\.]/_/g;
	File::Spec->join($cfg->{basedir} , "$host--$dt")
}

