package Test;

use v5.26;

use Carp;
use Data::Dumper;
use Exporter 'import';

our @EXPORTER = qw($hello);
our $hello = "HELLO FROM Test global";

sub new{
    say(__PACKAGE__ . ": new: [" . Dumper(\@_) . "]");
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
   our $AUTOLOAD;
   my $called = $AUTOLOAD =~ s/.*:://r;
   carp "No such attribute: $called" unless $self->{$called};
   #croak "No such attribute: $called" unless $self->{$called};
   return $self->{$called};
}

sub DESTROY {
   say __PACKAGE__, ": DESTROY called";
}


1;

