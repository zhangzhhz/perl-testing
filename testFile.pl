package main;

use File;
use v5.26;
use Data::Dumper;
my $f = File->new(path => "/home/zz", name => "test.txt");
my $m = $f->can('printInfo');
$m = $f->can('printInfo');
$f->$m();

$m = $f->can('dummy');
say $f->$m();

use File::MP3;
my $mp = File::MP3->new(path => "/home/zz", name => "test.mp3");
$mp->printInfo();
say $mp->dummy();
