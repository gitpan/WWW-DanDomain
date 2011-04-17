#!/usr/bin/perl -w

# $Id: new.t 7603 2011-04-17 20:51:35Z jonasbn $

use strict;
use Test::More tests => 5;

use_ok('WWW::DanDomain');

my $wd;

ok($wd = WWW::DanDomain->new());

isa_ok($wd, 'WWW::DanDomain');

my $mech = WWW::Mechanize->new();

ok($wd = WWW::DanDomain->new({mech => $mech}));

ok($wd = WWW::DanDomain->new({verbose => 1}));