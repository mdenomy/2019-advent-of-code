use strict;
use warnings;

sub is_possible{
	my @digits = split(//, $_[0]);
	return is_decreasing(@digits) && has_double(@digits);
}

sub is_decreasing{
	return 
		$_[0] >= $_[1] &&
		$_[1] >= $_[2] &&
		$_[2] >= $_[3] &&
		$_[3] >= $_[4] &&
		$_[4] >= $_[5];
}

sub has_double{
	return 
		$_[0] == $_[1] ||
		$_[1] == $_[2] ||
		$_[2] == $_[3] ||
		$_[3] == $_[4] ||
		$_[4] == $_[5];
}
1;
