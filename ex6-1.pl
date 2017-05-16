#!perl -w
use strict;

my %familyName = (
	"Mayu" => "Nawata",
	"Juri" => "Hakamada",
	"Xue" => "Li",
	"Honami" => "Tago",
	"Mari" => "Miyake",
	"Chihiro" => "Watanabe",
	"Shiho" => "Kanno",
	"Bo" => "An",
);

while (my $firstName = <STDIN>) {
	chomp $firstName;
	if (exists $familyName{$firstName}) {
		print "$familyName{$firstName}\n";
	}
}