#!/usr/bin/perl
use strict;
use warnings;

my $oldest_file = "";
my $oldest_age = 0;

my $current_time = time;

while (my $filename = <STDIN>) {
    chomp $filename;

    if (-e $filename) {
        my $mtime = (stat($filename))[9];
        my $age = $current_time - $mtime;

        if ($oldest_file eq "" || $age > $oldest_age) {
            $oldest_file = $filename;
            $oldest_age = $age;
        }
    } else {
        warn "해당 파일은 존재하지 않거나 접근 권한이 없습니다 :'$filename'\n";
    }
}

if ($oldest_file) {
    my $age_in_days = int($oldest_age / 86400);
    print "가장 오래된 파일 : $oldest_file\n";
    print "수정한지 총 $age_in_days 일이 지났습니다.\n";
} else {
    print "오류\n";
}
