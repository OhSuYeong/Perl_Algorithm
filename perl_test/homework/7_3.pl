#!/usr/bin/perl

while ($line = <STDIN>) {
    chomp $line;
    @fields = split /:/, $line;
    $login_name = $fields[0];
    $real_name = $fields[4];

    $real_name =~ s/,.*//;

    print "Login Name: $login_name, Real Name: $real_name\n";
}

# 커맨드 cat /etc/passwd | perl 7_3.pl