#!/usr/bin/perl -w

use strict;
use warnings;

# Prompt user for input
print "Enter numbers, one per line (two numbers on the same line will stop the script):\n";

# Read a line of input from standard input
my $input = <STDIN>;
chomp($input);

# Split input into an array of numbers
my @sub = split(/\s+/, $input);

# Ensure there are at least two numbers
if (@sub == 2) {
    my $result = $sub[0] + $sub[1];  # Sum the first two elements
    print "$result\n";
} else {
    print "Please enter at least two numbers.\n";
}

