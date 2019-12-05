use POSIX qw(floor);

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";

my $total = 0;

while (<$in>) {
     $fuel_required = floor($_ / 3) - 2;
     $total += $fuel_required;
 }

print "Total fuel required = $total\n";