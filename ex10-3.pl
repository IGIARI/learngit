#!perl -w
## Copyright (C) 2017 by Shaoting Song
use strict;

my $keyLen = 0;
foreach (keys %ENV) {
	if (length $_ > $keyLen) {
		$keyLen = length $_;
	}
}
my @env = sort keys %ENV;
foreach (@env) {
	printf "%-*s %s\n", $keyLen, $_, defined $ENV{$_} ? $ENV{$_} : "undefined value";
}
