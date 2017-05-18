#!perl -w
use strict;
my $answer = int(1 + rand(100));
while (<STDIN>) {
	chomp;
	if (/^exit$/i || /^quit$/i) {
		last;
	}
	if (!/^[0-9]+$/) {
		next;
	}
	if ($_ == $answer) {
		print "Congratulations!\n";
		last;
	} elsif ($_ < $answer) {
		print "Too low\n";
	} else {
		print "Too hight\n";
	}
}
