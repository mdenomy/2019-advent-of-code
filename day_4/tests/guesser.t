use strict;
use warnings;

use Test::More;
require "guesser.pl";

{
	ok( is_possible(111111), "same digits" );
}

{
	ok( !is_possible(111112), "increasing digit" );
}

{
	ok( !is_possible(111112), "decreasing, but no double" );
}
done_testing;