#!perl -w
use strict;
my $path = 'D:\Song';
chdir $path or die "Cannot chdir to $path: $!\n";
#system "dir";
exec "dir";
