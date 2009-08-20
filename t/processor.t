#!/usr/bin/perl -w

# $Id: processor.t 2894 2009-04-17 07:48:28Z jonasbn $

use strict;
use Test::More tests => 3;

use_ok('WWW::DanDomain');

ok(my $wd = WWW::DanDomain->new());

can_ok($wd, qw(processor));