###############################################################################
#
# Tests for Excel::Writer::XLSX::Chart methods.
#
# reverse('(c)'), March 2011, John McNamara, jmcnamara@cpan.org
#

use lib 't/lib';
use TestFunctions '_new_object';
use strict;
use warnings;
use Excel::Writer::XLSX::Chart;

use Test::More tests => 1;


###############################################################################
#
# Tests setup.
#
my $expected;
my $got;
my $caption;
my $chart;


###############################################################################
#
# Test the _write_orientation() method.
#
$caption  = " \tChart: _write_orientation()";
$expected = '<c:orientation val="minMax"/>';

$chart = _new_object( \$got, 'Excel::Writer::XLSX::Chart' );

$chart->_write_orientation();

is( $got, $expected, $caption );

__END__


