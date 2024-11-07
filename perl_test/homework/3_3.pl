#!/usr/bin/perl -w
srand;

@somearray = qw(KR CH JP EN);

$answer = $somearray[rand(@somearray)];

print "출력: $answer\n";