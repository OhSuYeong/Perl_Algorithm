#!/usr/bin/perl

use strict;
use warnings;

# 정확한 sleep 함수 구현
sub precise_sleep {
    my ($seconds) = @_;
    select(undef, undef, undef, $seconds);
}

# 무한 루프 시작
while (1) {
  my $a = 120;
  my $count = 0;

  # 증가하는 부분
  for ($count = 0; $count <= $a; $count++) {
    print "|" x $count . "\n";
    precise_sleep(0.05);
  }

  # 감소하는 부분
  for ($count = $a - 1; $count >= 0; $count--) {
    print "|" x $count . "\n";
    precise_sleep(0.05);
  }
}

