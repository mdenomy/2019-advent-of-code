use strict;
use warnings;

sub is_possible{
	my @digits = split(//, $_[0]);
	return !decreasing(@digits) && has_double(@digits);
}

sub decreasing{
	my $result = 
		$_[0] > $_[1] ||
		$_[1] > $_[2] ||
		$_[2] > $_[3] ||
		$_[3] > $_[4] ||
		$_[4] > $_[5];
	return $result;
}

sub has_double{
	my $result = 
		$_[0] == $_[1] ||
		$_[1] == $_[2] ||
		$_[2] == $_[3] ||
		$_[3] == $_[4] ||
		$_[4] == $_[5];
	return $result;
}
1;
