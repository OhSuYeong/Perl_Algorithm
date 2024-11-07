#!/usr/bin/perl
use strict;
use warnings;

while (my $filename = <STDIN>) {
    chomp $filename;

    if (open my $fh, '<', $filename) {
        while (my $line = <$fh>) {
            chomp $line;
            print "$filename: $line\n";
        }
        close $fh;
    } else {
        # 파일 열기에 실패한 경우 오류 메시지 출력
        warn "파일 열기 실패 '$filename': $!\n";
    }
}