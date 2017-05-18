#!perl -w

use strict;
use DateTime;

if (@ARGV != 3) {
	die "Usage: year month day. $!\n";
}
(my $year, my $month, my $day) = @ARGV;
my $dt = DateTime->new(
	year	=> $year,
	month	=> $month,
	day		=> $day,
	);
my $now = DateTime->from_epoch( epoch => time );
# DateTime->now;
my $duration = $now - $dt;
my @units = $duration->in_units( qw / years months days / );
printf "%d years, %d months, %d days\n", @units;
