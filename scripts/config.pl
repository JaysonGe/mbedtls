#!/usr/bin/env perl
# Backward compatibility redirection

## Copyright (C) 2019, ARM Limited, All Rights Reserved
## SPDX-License-Identifier: Apache-2.0
##
## Licensed under the Apache License, Version 2.0 (the "License"); you may
## not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
## http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
## WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
## This file is part of Mbed TLS (https://tls.mbed.org)

my $py = $0;
$py =~ s/\.pl$/.py/ or die "Unable to determine the name of the Python script";
exec 'python3', $py, @ARGV;
print STDERR "$0: python3: $!\n";
exec 'python', $py, @ARGV;
print STDERR "$0: python: $!\n";
exit 127;
