use POSIX qw(floor);

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";

my $part1_fuel_required = 0;
my $part2_fuel_required = 0;

# Could have read the whole file in, but do it line by line in case of huge file
while (<$in>) {
    $part1_fuel_required += calculate_fuel($_);
    $part2_fuel_required += calculate_total_fuel($_);
 }

print "Part 1 Total fuel required = $part1_fuel_required\n";
print "Part 2 Total fuel required = $part2_fuel_required\n";

# Calculates the fuel for a given mass
sub calculate_fuel {
	return floor($_[0] / 3) - 2;
}

# Calculates the fuel for a given mass, plus the mass of the fuel
sub calculate_total_fuel {
	my $fuel = calculate_fuel($_[0]);
	if ($fuel > 0) {
		return $fuel += calculate_total_fuel($fuel);
	} else {
		return 0;
	}
}