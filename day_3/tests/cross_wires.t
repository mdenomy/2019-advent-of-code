use strict;
use warnings;

use Test::More;
require "cross_wires.pl";

{
	my $wire1_path = "R1";
	my $wire2_path = "R1";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 right")
}

{
	my $wire1_path = "L1";
	my $wire2_path = "L1";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 left")
}

{
	my $wire1_path = "U1";
	my $wire2_path = "U1";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 up")
}

{
	my $wire1_path = "D1";
	my $wire2_path = "D1";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "simple move 1 down")
}

{
	my $wire1_path = "D2";
	my $wire2_path = "D2";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 1,  "multiple matches, take shortest")
}

{
	my $wire1_path = "L1,U2,R1";
	my $wire2_path = "U2";
	my $distance = find_min_crossing_distance($wire1_path, $wire2_path);

	is($distance, 2,  "simple move of different paths")
}

done_testing;