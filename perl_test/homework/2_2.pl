#!/usr/bin/perl -w
print "반경을 입력하세요 : ";
$radius = <STDIN>;
chomp($radius);
$answer=$radius * 2 * 3.141592654;

print "$answer\n";