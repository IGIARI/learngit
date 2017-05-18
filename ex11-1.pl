#!perl -w

use strict;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };
foreach (sort keys %modules) {
	print "$_: " . (defined $modules{$_} ? $modules{$_} : "undefined") . "\n";
}
