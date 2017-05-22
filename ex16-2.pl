#!perl -w
use strict;
open STDOUT, '>', 'ls.out';
open STDERR, '>', 'ls.err';
my $path = 'D:\Song';
chdir $path or die "Cannnot chdir to $path: $!\n";
system "dir";
