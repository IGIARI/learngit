#!perl -w
use strict;

my %wordCount;
while (<>) {
	chomp;
	$wordCount{$_}++;
}
foreach (sort keys %wordCount) {
	print "$_ $wordCount{$_}\n";
}