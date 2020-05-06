package Test;

use v5.26;

use Carp;
use Exporter 'import';

our @EXPORTER = qw($hello);
our $hello = "HELLO FROM Test global";

sub new{
    say(__PACKAGE__ . ": new: [@_]");
    my $class = shift;
    my $self = {
        attrib1 => "My attrib1",
        'attrib2' => "My attrib2",
    };
    bless($self, $class);
    return $self;
}

sub method1{
    my $self = shift;
    return $self->{attrib1} . ', ' . $self->{attrib2};
}

sub getGlobalHello{
    return $hello;
}

sub AUTOLOAD {
   my $self = shift;
   my $type = ref ($self) || croak "$self is not an object";
   carp __PACKAGE__, ": AUTOLOAD";
   say __PACKAGE__, ": AUTOLOAD caled";
}

sub DESTROY {
   say __PACKAGE__, ": DESTROY called";
}


1;

