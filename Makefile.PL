use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'WWW::DanDomain',
    AUTHOR              => 'jonasbn <jonasbn@cpan.org>',
    VERSION_FROM        => 'lib/WWW/DanDomain.pm',
    ABSTRACT_FROM       => 'lib/WWW/DanDomain.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'WWW-DanDomain-*' },
);
