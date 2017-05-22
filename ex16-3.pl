#!/usr/bin/perl -w
# For Linux
use strict;
my $dateStr = `date`;
$dateStr =~ m/^(\w{3})/;
if ($1 =~ /sat|sun/i) {
	print "go play\n";
} else {
	print "get to work\n";
}

# print localtime() . "\n";
