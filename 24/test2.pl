#!/usr/bin/perl -w
use strict;

print qq(Monthly deposit amout?);
my $pmt=<stdin>;
chomp($pmt);

print qq(Annual Interest rate?(ex. 7% is .07));
my $interest=<stdin>;
chomp($interest);

print qq(Number of months to deposit?);
my $mons=<stdin>;
chomp($mons);

#Formula requires a monthly interest
$interest/=12;
my $total=$pmt*((1+$interest)**$mons-1)/$interest;

print "After $mons months,at $interest monthly you";
print "will have $total.\n";