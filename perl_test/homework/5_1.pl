#!/usr/bin/perl -w

%hashname = qw(
	red		apple
	greed	leaves
	blue	ocean
);

print "색깔을 입력하세요 : ";
$color =<STDIN>;
chomp($color);

print "$hashname{$color}\n";