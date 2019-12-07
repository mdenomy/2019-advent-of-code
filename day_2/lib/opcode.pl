use strict;
use warnings;

sub process {
	for (my $i = 0; $i < scalar(@_); $i = $i + 4) {
		if ($_[$i] == 1) {
			$_[$_[$i+3]] = $_[$_[$i+1]] + $_[$_[$i+2]];
		} elsif ($_[$i] == 2) {
			$_[$_[$i+3]] = $_[$_[$i+1]] * $_[$_[$i+2]];
		}
		elsif ($_[$i] == 99) {
			last;
		}
	} 
	return @_;
}

1;