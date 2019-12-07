use strict;
use warnings;
require "opcode.pl";

open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
my $input_str  = <$in>;

# Read in the input file and then change two values per the instructions
my @input = (split ",", $input_str);
@input[1]= 12;
@input[2]=2;

my @output = &process(@input);
print "Output @output\n";
