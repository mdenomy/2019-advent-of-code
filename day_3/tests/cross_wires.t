use strict;
use warnings;

use Test::More;
require "cross_wires.pl";

{
	my $wire1_path = "L1,U2,R1";
	my $wire2_path = "U2";
	my @crossing_points = find_crossing_points($wire1_path, $wire2_path);

	my @expected = ((0,2));
	is_deeply(\@crossing_points, \@expected, "simple move of 1 point");
}

done_testing;