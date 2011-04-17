#!perl -T

# $Id: 00-load.t 7603 2011-04-17 20:51:35Z jonasbn $

use Test::More tests => 1;

BEGIN {
	use_ok( 'WWW::DanDomain' );
}

diag( "Testing WWW::DanDomain $WWW::DanDomain::VERSION, Perl $], $^X" );
