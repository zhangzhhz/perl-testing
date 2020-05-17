package File::MP3;

use strict;
use Data::Dumper;

use v5.26;

use parent 'File';

sub new{
    my ($class, %args) = @_;
    my $self = $class->SUPER::new(%args);
    return $self;
}

#sub printInfo{
#    say "File is " . $_[0]->{_path} . "/" . $_[0]->{_name} ;
#}


1;
