#! /usr/bin/env perl
# Copyright 2015-2016 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the Apache License 2.0 (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html


use OpenSSL::Test qw/:DEFAULT srctop_file/;
use OpenSSL::Test::Utils;

setup("test_clienthello");

plan skip_all => "No TLS/SSL protocols are supported by this OpenSSL build"
    if alldisabled(grep { $_ ne "ssl3" } available_protocols("tls"));

#No EC with TLSv1.3 confuses the padding calculations in this test
plan skip_all => "No EC with TLSv1.3 is not supported by this test"
    if disabled("ec");

plan tests => 1;

ok(run(test(["clienthellotest", srctop_file("test", "session.pem")])),
   "running clienthellotest");
