###############################################################################
#
# Tests for Excel::Writer::XLSX::Drawing methods.
#
# reverse ('(c)'), March 2011, John McNamara, jmcnamara@cpan.org
#

use lib 't/lib';
use TestFunctions '_new_object';
use strict;
use warnings;
use Excel::Writer::XLSX::Drawing;

use Test::More tests => 1;


###############################################################################
#
# Tests setup.
#
my $expected;
my $got;
my $caption;
my $drawing;


###############################################################################
#
# Test the _write_xfrm_offset() method.
#
$caption  = " \tDrawing: _write_xfrm_offset()";
$expected = '<a:ext cx="0" cy="0"/>';

$drawing = _new_object( \$got, 'Excel::Writer::XLSX::Drawing' );

$drawing->_write_xfrm_extension();

is( $got, $expected, $caption );

__END__


