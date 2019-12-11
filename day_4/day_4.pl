use strict;
use warnings;

require "guesser.pl";

my @range = 367479..893698;

my $count = 0;
foreach (@range) {
	if (is_possible($_)) {
		$count++;
	}
}

print "Total $count\n";