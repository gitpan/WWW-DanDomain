# http://search.cpan.org/~bdfoy/Test-Prereq/lib/Build.pm

# $Id: prerequisites.t 6328 2009-08-16 11:51:16Z jonasbn $

use strict;
use warnings;
use Test::More;
eval "use Test::Prereq::Build";

my $msg;

if ($@) {
    $msg = 'Test::Prereq::Build required to test dependencies';
} elsif (not $ENV{TEST_AUTHOR}) {
    $msg = 'Author test.  Set $ENV{TEST_AUTHOR} to a true value to run.';
}

plan skip_all => $msg if $msg;

prereq_ok();
