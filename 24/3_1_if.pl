#!/usr/bin/perl
use strict;
use warnings;

my $im_thinking_of=int(rand(10));
print "Pick a Number:";
my $guess=<STDIN>;
chomp($guess);

if($guess>$im_thinking_of){
	print "You guessed too high!\n";
}elsif($guess< $im_thinking_of){
	print "You guessed too low!\n";
}else{
	print "You got it right!\n";
}
