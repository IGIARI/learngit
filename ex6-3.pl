#!perl -w
use strict;

my $keyLen = 0;
foreach (keys %ENV) {
	if (length $_ > $keyLen) {
		$keyLen = length $_;
	}
}
foreach (sort keys %ENV) {
	printf "%-*s %s\n", $keyLen, $_, $ENV{$_};
}