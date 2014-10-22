###############################################################################
#
# Tests for Excel::Writer::XLSX::Package::Comments methods.
#
# reverse('(c)'), September 2010, John McNamara, jmcnamara@cpan.org
#

use lib 't/lib';
use TestFunctions qw(_new_object);
use strict;
use warnings;
use Excel::Writer::XLSX::Package::Comments;

use Test::More tests => 1;

###############################################################################
#
# Tests setup.
#
my $expected;
my $caption;
my $got;
my $obj = _new_object( \$got, 'Excel::Writer::XLSX::Package::Comments' );


###############################################################################
#
# Test the _write_xml_declaration() method.
#
$caption  = " \tComments: _write_xml_declaration()";
$expected = qq(<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n);

$obj->_write_xml_declaration();

is( $got, $expected, $caption );

__END__


