#!/usr/bin/perl

use strict;

use v5.26; # to use `say`, or
# use 5.26.1; # to use `say`

use Test;
use Util;
#use Util qw(myFunc1 myFunc2 $var1 $var2);

use Data::Dumper;

my $test = Test->new(arg1 => "value1", arg2 => "value2");
#my $test = new Test();
say;
say "***** class Test... *****";
say("Object\$test is [" . Dumper($test). "]");
say("\$test->{attrib1} = ", $test->{attrib1});
say("\$test->{attrib2} = ", $test->{attrib2});
say("\$test->method1() = ", $test->method1());
say("\$test->method1 = ", $test->method1);
say("\$Test::hello = ", $Test::hello);
say("\$test->getGlobalHello() = ", $test->getGlobalHello());
$test->nonexistingSubroutine();


say;
say "***** EXPORT Test... *****";
say(myFunc1());
#say(myFunc2()); # This will fail as myFunc2 is not exportable in Util.pm
say(Util::myFunc1());
say(Util::myFunc2());
say($Util::var1);
say($Util::var2);
say($Util::var3);
say($main::var1);
say($main::var2);
say($main::var3);

