#!/usr/bin/perl -w

print "외부 온도 : ";
$temp = <STDIN>;
if ($temp > 75) {
	print "too hot\n";
} elsif ($temp < 75 and $temp > 68) {
	print "just right!\n";
}
else {
	print "too cold\n";
}