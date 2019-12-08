use strict;
use warnings;

require "cross_wires.pl";

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";

my $wire_1_path  = <$in>;
my $wire_2_path  = <$in>;

print "$wire_1_path\n\n";
print "$wire_2_path\n\n";

my $distance = find_min_crossing_distance($wire_1_path, $wire_2_path);

print "$distance\n";