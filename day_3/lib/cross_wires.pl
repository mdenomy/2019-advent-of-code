use strict;
use warnings;


my @wire1_locations;
my @wire2_locations;
my %current_point = (
	"x"	=> 0,
	"y" => 0
);
my $cur_locations_ref;

sub find_crossing_points {
	my $wire1_path = shift;
	my $wire2_path = shift;

	my @wire1_moves = (split(",", $wire1_path));
	my @wire2_moves = (split(",", $wire2_path));

	$cur_locations_ref =  \@wire1_locations;
	calculate_moves(@wire1_moves);

	$cur_locations_ref =  \@wire2_locations;
	calculate_moves(@wire2_moves);

	print "Locations wire1 @wire1_locations\n";
	print "Locations wire2 @wire2_locations\n";

	 my @result = ((0,1));
	 return @result;
}

sub reset_current_location {
	%current_point = (
		"x"	=> 0,
		"y" => 0
	);

}

sub calculate_moves {
	my @moves = @_;
	reset_current_location();
	
	foreach (@moves) {
		(my $direction, my $distance) = parse_move($_);

		if($direction eq 'L') {
			move_left($distance);
		}
		elsif($direction eq 'R') {
			move_right($distance)
		}
		elsif($direction eq 'U') {
			move_up($distance)
		}
		elsif($direction eq 'D') {
			move_down($distance);
		}
	}
}

sub parse_move {
	$_ =~ m/([LRUD])(\d+)/;
	return ($1,$2);
}

sub move_left {
	for (my $distance = shift; $distance > 0; $distance--) {
		$current_point{"x"} = $current_point{"x"} - 1;
		update_positions_visited ();
	}
}

sub move_right {
	for (my $distance = shift; $distance > 0; $distance--) {
		$current_point{"x"} = $current_point{"x"} + 1;
		update_positions_visited ();
	}
}

sub move_up {
	for (my $distance = shift; $distance > 0; $distance--) {
		$current_point{"y"} = $current_point{"y"} + 1;
		update_positions_visited ();
	}
}

sub move_down {
	for (my $distance = shift; $distance > 0; $distance--) {
		$current_point{"y"} = $current_point{"y"} - 1;
		update_positions_visited ();
	}
}

sub update_positions_visited {
	push (@{$cur_locations_ref}, (%current_point{"x"}, %current_point{"y"}));
}

1;