#!/usr/bin/perl -w

print "외부 온도 : ";
$temp = <STDIN>;
if ($temp > 75) {
	print "too hot\n";
} else {
	print "too cold\n";
}