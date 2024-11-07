#!/usr/bin/perl -w

print "배열 입력 : ";
@str_list = <STDIN>;

@answer = reverse(@str_list);

print "역순 출력: @answer\n";