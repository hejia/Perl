#!/usr/bin/perl -w
use strict;

my $pi=3.14;

print "pi!=3.14159\n" if($pi!=3.1415926);

my @array = (1 .. 10); 
foreach my $tmp (@array) 
{ 
    #print "the value of tmp is:$tmp\n"; 
    if($tmp) 
    {
        $tmp--; 
        print "$tmp\t"; 
        redo; 
        print "hello\n"; 
    } 
    print "\n"; 
}