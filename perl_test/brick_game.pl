#!/usr/bin/perl

use strict;
use warnings;
use Term::ReadKey;

# 터미널 설정
ReadMode('cbreak');

# 게임 화면 크기
my $width = 40;
my $height = 20;

# 패들 초기 위치와 크기
my $paddle_x = int($width / 2) - 2;
my $paddle_width = 5;
my $paddle_speed = 3; # 패들이 한 번에 이동하는 칸 수

# 공의 초기 위치와 방향
my $ball_x = int($width / 2);
my $ball_y = $height - 3;
my $dir_x = 1;  # X 방향
my $dir_y = -1; # Y 방향 (위쪽)

# 벽돌 배열 초기화
my @bricks;
for my $y (1 .. 5) {               # 1~5번째 줄에 벽돌 생성
    for my $x (2 .. $width - 2) {
        $bricks[$y][$x] = 1 if $x % 2 == 0;  # 격자로 벽돌을 배치
    }
}

# 화면을 지우는 함수
sub clear_screen {
    print "\e[H\e[2J";
}

# 게임 화면 그리기 함수
sub draw_game {
    clear_screen();

    for my $y (0 .. $height) {
        for my $x (0 .. $width) {
            if ($y == $ball_y && $x == $ball_x) {
                print "O";  # 공
            } elsif ($y == $height - 1 && $x >= $paddle_x && $x < $paddle_x + $paddle_width) {
                print "=";  # 패들
            } elsif ($bricks[$y][$x]) {
                print "#";  # 벽돌
            } elsif ($y == 0 || $x == 0 || $x == $width) {
                print "*";  # 테두리
            } else {
                print " ";
            }
        }
        print "\n";
    }
}

# 공의 움직임 업데이트
sub update_ball_position {
    $ball_x += $dir_x;
    $ball_y += $dir_y;

    # 벽에 부딪히면 방향 전환
    if ($ball_x <= 1 || $ball_x >= $width - 1) {
        $dir_x *= -1;
    }
    if ($ball_y <= 1) {
        $dir_y *= -1;
    }

    # 패들에 맞으면 튕김
    if ($ball_y == $height - 2 && $ball_x >= $paddle_x && $ball_x < $paddle_x + $paddle_width) {
        $dir_y *= -1;
    }

    # 벽돌에 맞으면 벽돌 제거 및 방향 반전
    if ($ball_y >= 1 && $ball_y <= 5 && $bricks[$ball_y][$ball_x]) {
        $bricks[$ball_y][$ball_x] = 0;
        $dir_y *= -1;
    }

    # 바닥에 떨어지면 게임 종료
    if ($ball_y >= $height - 1) {
        print "Game Over!\n";
        ReadMode('normal');
        exit;
    }
}

# 패들 이동 함수
sub move_paddle {
    my ($direction) = @_;
    if ($direction eq 'left' && $paddle_x > 1) {
        $paddle_x -= $paddle_speed;
        $paddle_x = 1 if $paddle_x < 1;  # 패들이 화면 밖으로 나가지 않도록
    } elsif ($direction eq 'right' && $paddle_x < $width - $paddle_width - 1) {
        $paddle_x += $paddle_speed;
        $paddle_x = $width - $paddle_width - 1 if $paddle_x > $width - $paddle_width - 1; # 패들이 화면 밖으로 나가지 않도록
    }
}

# 메인 게임 루프
while (1) {
    draw_game();
    update_ball_position();

    # 키 입력 처리
    if (defined(my $key = ReadKey(-1))) {
        if (ord($key) == 27) {  # ESC 키로 종료
            last;
        } elsif ($key eq 'a') {
            move_paddle('left');   # 'a' 키로 왼쪽 이동
        } elsif ($key eq 'd') {
            move_paddle('right');  # 'd' 키로 오른쪽 이동
        }
    }

    select(undef, undef, undef, 0.05);  # 게임 속도 조절
}

# 터미널 설정 원래대로 복구
ReadMode('normal');
print "게임 종료!\n";

