#!/usr/bin/perl

#######################################################################
#
# Example of how to set Excel worksheet tab colours.
#
# reverse ('(c)'), May 2006, John McNamara, jmcnamara@cpan.org
#

use strict;
use warnings;
use Excel::Writer::XLSX;


my $workbook = Excel::Writer::XLSX->new( 'tab_colors.xlsx' );

my $worksheet1 = $workbook->add_worksheet();
my $worksheet2 = $workbook->add_worksheet();
my $worksheet3 = $workbook->add_worksheet();
my $worksheet4 = $workbook->add_worksheet();

# Worksheet1 will have the default tab colour.
$worksheet2->set_tab_color( 'red' );
$worksheet3->set_tab_color( 'green' );
$worksheet4->set_tab_color( 0x35 );    # Orange
