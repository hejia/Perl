use strict;
use warnings;
use DBI;
use DBD::mysql;

#连接数据库mydata 
my $dbh = DBI->connect('DBI:mysql:test','root','1234')||die "无法连接数据库:".DBI->errstr(); 

print "插入若干记录\n"; 

my $sth = $dbh->prepare(q{ 
INSERT INTO address (id, name,email,telephone) VALUES (?, ?, ?, ?) 
}); 

print "输入记录,回车结束:"; 
while(my $inputdata=<>){
	chomp($inputdata);
	last unless($inputdata);
	my ($id, $name,$email, $tel) = split( /,/, $inputdata); 
	$sth->execute($id, $name, $email,$tel) 
} 

# $dbh->commit; 

print "下面根据输入的名字打印出EMAIL地址和电话\n"; 

my $sth = $dbh->prepare('SELECT * FROM address')||die $dbh->errstr();
$sth->execute();
my @data=$sth->fetchrow_array();

print "$data[0]\n";
#print "请输入姓名,回车结束:"; 
#
#while ($inputname =<>) { 
#
#my @data; 
#
#chomp $inputname; 
#
#last unless($inputname); 
#
#$sth->execute($inputname) or die "错误: " . $sth->errstr; 
#
#while (@data = $sth->fetchrow_array()) { 
#
#print "Email:$data[2]t Telephone:$data[3]n"; 
#
#} 
#
#} 

#断开连接 

#$dbh->disconnect;