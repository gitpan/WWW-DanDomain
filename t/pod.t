#!perl -T

# $Id: pod.t 7603 2011-04-17 20:51:35Z jonasbn $

use Test::More;
eval "use Test::Pod 1.14";
plan skip_all => "Test::Pod 1.14 required for testing POD" if $@;
all_pod_files_ok();
