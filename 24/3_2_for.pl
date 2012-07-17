#!/usr/bin/perl -w
use strict;

for($a=0;$a<=10;$a+=1){
	if($a==6){
		next;
	}elsif($a==0){
		print "now a is $a\n";
	}else{
		print "$a\n";
	}	
}