###############################################################################
#
# Tests for Excel::Writer::XLSX::Package::VML methods.
#
# reverse('(c)'), September 2011, John McNamara, jmcnamara@cpan.org
#

use lib 't/lib';
use TestFunctions '_new_object';
use strict;
use warnings;
use Excel::Writer::XLSX::Package::VML;

use Test::More tests => 1;


###############################################################################
#
# Tests setup.
#
my $expected;
my $got;
my $caption;
my $vml;


###############################################################################
#
# Test the _write_shapelayout() method.
#
$caption  = " \tVML: _write_shapelayout()";
$expected = '<o:shapelayout v:ext="edit"><o:idmap v:ext="edit" data="1"/></o:shapelayout>';

$vml = _new_object( \$got, 'Excel::Writer::XLSX::Package::VML' );

$vml->_write_shapelayout( 1 );

is( $got, $expected, $caption );

__END__


