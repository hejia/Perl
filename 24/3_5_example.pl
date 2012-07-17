#!/usr/bin/perl -w
use strict;

my $maxprimes=100;
my $value=1;
my $count=0;

#第二种算法
while($count<$maxprimes){
	$value++;
	my $composite=0;
	my $k=sqrt($value);
	for(my $j=2;$j<=$k;$j++){
		if($value%$j==0){
			$composite=1;
		}
	}
	if(!$composite){
		$count++;
		print "$count :$value is prime\n";
	}
}

#第一种算法
#while($count<$maxprimes){
#	$value++;
#	my $composite=0;
#	outer:for(my $i=2;$i<$value;$i++){
#		for(my $j=$i;$j<$value;$j++){
#			if(($j*$i)==$value){
#				$composite=1;
#				last outer;
#			}
#		}
#	}
#	if(!$composite){
#		$count++;
#		print "$count :$value is prime\n";
#	}
#}