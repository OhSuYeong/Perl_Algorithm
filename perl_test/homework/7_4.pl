#!/usr/bin/perl
use strict;
use warnings;

my %name_count;

while (my $line = <STDIN>) {
    chomp $line;
    my @fields = split /:/, $line;
    my $real_name = $fields[4];

    $real_name =~ s/,.*//;

    my ($first_name) = split /\s+/, $real_name;

    $name_count{$first_name}++ if $first_name;
}

foreach my $name (keys %name_count) {
    if ($name_count{$name} > 1) {
        print "Name: $name, Count: $name_count{$name}\n";
    }
}

# 커맨드 cat /etc/passwd | perl 7_4.pl