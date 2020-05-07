package File;

use v5.26;
use Class::Tiny qw( path content last_mod_time );

say "@INC";

sub print_info {
    my $self = shift;
    print "This file is at ", $self->path, "\n";
}

1;

package main;

my $file = File->new(path => 'my_path', name => "filename");
$file->print_info();
File->print_info(); #???

0;

