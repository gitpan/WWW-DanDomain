#!perl -T

# $Id$

use Test::More tests => 1;

BEGIN {
	use_ok( 'WWW::DanDomain' );
}

diag( "Testing WWW::DanDomain $WWW::DanDomain::VERSION, Perl $], $^X" );
