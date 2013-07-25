# Build.PL for Spilpriser

# $Id: Build.PL 383 2009-01-08 12:39:01Z jonasbn $

use strict;
use Module::Build;

my $build = Module::Build->new(
    dist_author          => 'Jonas B. Nielsen, <jonasbn@logicLAB.dk>',
    module_name          => 'WWW::DanDomain',
    dist_version_from    => 'lib/WWW/DanDomain.pm',
    dist_abstract        => 'WWW::DanDomain',
    license              => 'perl',
    recursive_test_files => 1,
    create_readme        => 1,
    configure_requires   => {},
    create_makefile_pl   => 'traditional',
    build_requires       => {
        'Test::More'                => '0', 
        'File::Slurp'               => '0',
        'Test::Exception'           => '0',
        'Test::MockObject::Extends' => '0',
        'Test::Perl::Critic'        => '0',
        'Test::Prereq::Build'       => '0',
        'Env'                       => '0',
    },
    requires => {
        'Module::Build'             => '0.30',
        'Data::Dumper'           => '0',    #Debugging
        'WWW::Mechanize'         => '0',
        'WWW::Mechanize::Cached' => '0',
        'Carp'                   => '0',
        'Try::Tiny'              => '0',
        'UNIVERSAL::can'         => '0',
    },
    meta_merge => {
        resources => {
            homepage => 'http://logicLAB.jira.com/browse/DAND',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=WWW-DanDomain',
            repository => 'http://logicLAB.jira.com/svn/DAND',
        }
    },

);

$build->create_build_script();

1;
