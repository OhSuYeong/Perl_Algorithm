#!/usr/bin/perl
use strict;
use warnings;

# 숫자를 영어 이름으로 변환하는 서브루틴
sub number_to_english {
    my $number = shift;

    # 1에서 9까지의 숫자에 대한 영어 이름 맵핑
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

    # 범위 내 숫자인 경우 영어 이름 반환, 그렇지 않으면 원래 값 반환
    return $number_names{$number} // $number;
}

# 테스트를 위해 인수를 받고 결과를 출력
for my $arg (@ARGV) {
    print number_to_english($arg), "\n";
}

# perl 8_1.pl 1 5 9 11