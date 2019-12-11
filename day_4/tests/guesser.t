use strict;
use warnings;

use Test::More;
require "guesser.pl";

{
	ok( is_possible(111111), "same digits" );
}

{
	ok( is_possible(234556), "increasing digit, has double" );
}

{
	ok( !is_possible(221111), "decreasing digit" );
}

{
	ok( !is_possible(765432), "decreasing, and no double" );
}

{
	ok( !is_possible(765442), "decreasing, has double" );
}
done_testing;