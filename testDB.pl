use strict;
use warnings;
use DBI;
use DBD::mysql;

#�������ݿ�mydata 
my $dbh = DBI->connect('DBI:mysql:test','root','1234')||die "�޷��������ݿ�:".DBI->errstr(); 

print "�������ɼ�¼\n"; 

my $sth = $dbh->prepare(q{ 
INSERT INTO address (id, name,email,telephone) VALUES (?, ?, ?, ?) 
}); 

print "�����¼,�س�����:"; 
while(my $inputdata=<>){
	chomp($inputdata);
	last unless($inputdata);
	my ($id, $name,$email, $tel) = split( /,/, $inputdata); 
	$sth->execute($id, $name, $email,$tel) 
} 

# $dbh->commit; 

print "���������������ִ�ӡ��EMAIL��ַ�͵绰\n"; 

my $sth = $dbh->prepare('SELECT * FROM address')||die $dbh->errstr();
$sth->execute();
my @data=$sth->fetchrow_array();

print "$data[0]\n";
#print "����������,�س�����:"; 
#
#while ($inputname =<>) { 
#
#my @data; 
#
#chomp $inputname; 
#
#last unless($inputname); 
#
#$sth->execute($inputname) or die "����: " . $sth->errstr; 
#
#while (@data = $sth->fetchrow_array()) { 
#
#print "Email:$data[2]t Telephone:$data[3]n"; 
#
#} 
#
#} 

#�Ͽ����� 

#$dbh->disconnect;