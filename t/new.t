#!/usr/bin/perl -w

use strict;
use Test::More tests => 6;

use_ok('WWW::DanDomain');

my $wd;

ok($wd = WWW::DanDomain->new());

isa_ok($wd, 'WWW::DanDomain');

ok($wd = WWW::DanDomain->new({cache => 1}));

my $mech = WWW::Mechanize->new();

ok($wd = WWW::DanDomain->new({mech => $mech}));

ok($wd = WWW::DanDomain->new({verbose => 1}));