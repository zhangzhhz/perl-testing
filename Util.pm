package Util;

use strict;

use Exporter 'import';

our @EXPORT = qw($var1 $var2 myFunc1);
our @EXPORT_OK = qw(myFunc2);

# variables must be declared with `our`
# in order to be exportable or used by using ::
our $var1 = 'HELLO WORLD';
our $var2 = 'HELLO THERE';
our $var3 = "VAR3";

sub myFunc1 {
    return "MyFunc1 returned";
}
sub myFunc2 {
    return "MyFunc2 returned";
}
