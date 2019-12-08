use strict;
use warnings;

use Test::More;
require "cross_wires.pl";

{
	my $wire1_path = "R1";
	my $wire2_path = "R1";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 right");
}

{
	my $wire1_path = "L1";
	my $wire2_path = "L1";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 left");
}

{
	my $wire1_path = "U1";
	my $wire2_path = "U1";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 up");
}

{
	my $wire1_path = "D1";
	my $wire2_path = "D1";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 down");
}

{
	my $wire1_path = "D2";
	my $wire2_path = "D2";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "multiple matches, take shortest");
}

{
	my $wire1_path = "L1,U2,R1";
	my $wire2_path = "U2";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 2,  "simple move of different paths");
}

{
	my $wire1_path = "R75,D30,R83,U83,L12,D49,R71,U7,L72";
	my $wire2_path = "U62,R66,U55,R34,D71,R55,D58,R83	";
	my ($distance, $steps) = find_min_crossing_distance($wire1_path, $wire2_path);

	is($steps, 610,  "fewest steps");
}

done_testing;