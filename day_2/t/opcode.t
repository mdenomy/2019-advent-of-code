use strict;
use warnings;

use Test::More;
require "opcode.pl";

{
	my @input = (1,4,5,6,10,20,8);
	my @expected = (1,4,5,6,10,20,30);

	my @output = &process(@input);
	is_deeply( \@output, \@expected, "Simple add, opcode 1");
}

{
	my @input = (2,4,5,6,10,20,8);
	my @expected = (2,4,5,6,10,20,200);

	my @output = &process(@input);
	is_deeply( \@output, \@expected, "Simple multiply, opcode 2");

}

{
	my @input = (2,8,9,10,1,11,12,13,5,4,30,11,22,8);
	my @expected = (2,8,9,10,1,11,12,13,5,4,20,11,22,33);

	my @output = &process(@input);
	is_deeply( \@output, \@expected, "Multiple opcodes");

}

{
	my @input = (99,2,5,2,40);
	my @expected = (99,2,5,2,40);

	my @output = &process(@input);
	is_deeply( \@output, \@expected, "Stop at 99");

}

{
	my @input = (2,8,9,10,99,11,12,13,5,4,30,11,22,8);
	my @expected = (2,8,9,10,99,11,12,13,5,4,20,11,22,8);

	my @output = &process(@input);
	is_deeply( \@output, \@expected, "Stop at internal 99");

}
done_testing;