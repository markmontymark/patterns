use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Patterns',
    license             => 'perl',
    dist_author         => q{Mark Koopman <markmontymark@yahoo.com>},
    dist_version_from   => 'lib/Patterns.pm',
    build_requires => {
        'Test::More' => 0,
        'Moo' => 0,
        'Class::Virtually::Abstract' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'Patterns-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
