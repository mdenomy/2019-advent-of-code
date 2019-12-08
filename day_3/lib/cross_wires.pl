use strict;
use warnings;

sub find_crossing_points {
	my $wire1_path = shift;
	my $wire2_path = shift;

	my @wire1_locations;
	my @wire1_moves = (split(",", $wire1_path));
	my @wire2_moves = split(",", $wire2_path);
	print "@wire1_moves\n";
	print "@wire2_moves\n";

	my %current_point = (
		"x"	=> 0,
		"y" => 0
	);

	foreach (@wire1_moves) {
		$_ =~ m/([LRUD])(\d+)/;
		print "Move $1 ";
		print "Distance $2\n";

		if($1 eq 'L') {
			for (my $distance = $2; $distance > 0; $distance--) {
				$current_point{"x"} = $current_point{"x"} - 1;
				push (@wire1_locations,
					(%current_point{"x"}, %current_point{"y"}));
			}
		}
		elsif($1 eq 'R') {
			for (my $distance = $2; $distance > 0; $distance--) {
				$current_point{"x"} = $current_point{"x"} + 1;
				push (@wire1_locations,
					(%current_point{"x"}, %current_point{"y"}));
			}
		}
		elsif($1 eq 'U') {
			for (my $distance = $2; $distance > 0; $distance--) {
				$current_point{"y"} = $current_point{"y"} + 1;
				push (@wire1_locations,
					(%current_point{"x"}, %current_point{"y"}));
			}
		}
		elsif($1 eq 'D') {
			for (my $distance = $2; $distance > 0; $distance--) {
				$current_point{"y"} = $current_point{"y"} - 1;
				push (@wire1_locations,
					(%current_point{"x"}, %current_point{"y"}));
			}
		}

		print "Current point ($current_point{x}, $current_point{y})\n";
	}

	print "Locations @wire1_locations\n";

	 my @result = ((0,1));
	 return @result;
}

1;