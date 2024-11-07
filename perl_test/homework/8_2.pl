#!/usr/bin/perl
use strict;
use warnings;

sub number_to_english {
    my $number = shift;

    my %number_names = (
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine'
    );

    return $number_names{$number} // $number;
}

if (@ARGV != 2) {
    die "Please provide exactly two numbers as arguments.\n";
}

my ($num1, $num2) = @ARGV;

my $num1_english = number_to_english($num1);
my $num2_english = number_to_english($num2);

my $sum = $num1 + $num2;

my $sum_english = number_to_english($sum);

my $result = "$num1_english plus $num2_english equals $sum_english";

$result =~ s/^\w/\u$&/;     # 첫 글자는 대문자 변환

print "$result\n";

# perl 8_2.pl 2 2