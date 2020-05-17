package File;

use strict;
use Data::Dumper;

use v5.26;

sub new{
    my ($class, %args) = @_;
    my $obj = {
        _greeting => "World",
        _path => $args{path},
        _name => $args{name},
    };
    bless $obj, $class;
    return $obj;
}

sub printInfo{
    say "File is " . $_[0]->{_path} . "/" . $_[0]->{_name} ;
}

sub hello{
    return $_[0]->{_greeting};
}

sub dummy{
    return Dumper($_[0]);
}

1;
