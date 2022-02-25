#!/usr/bin/perl

# besiyata d'shmaya

use strict;
use warnings;
use 5.010;
use utf8;

use CGI; use CGI::Carp "fatalsToBrowser";
use HTML::Template;

# not needed except for "text/plain"
#binmode STDOUT, ":encoding(UTF-8)";

my $tmpl_name = "/var/www/html/census_cnc-1/templates/index.tmpl";
my $local_storage_path = "/home/raphael/Desktop/apache2/acme-census";
my $template = HTML::Template->new( filename => $tmpl_name );
my $no_census_data;
my $census_data = [];

my $cgi = CGI->new;

print $cgi->header( -type => "text/html", -charset => "utf-8" );
#print "你好";

# process dynamic data
opendir my $census_fh, $local_storage_path or die "$!";
my @census_data = grep { $_ !~ /^\./ && -d "$local_storage_path/$_" } readdir $census_fh;
close $census_fh;

# process dynamic data
if (@census_data) {
  $no_census_data = 0;
} else {
  $no_census_data = 1;
}

for ( 0..$#census_data ) {
  push @$census_data, { census_name => $census_data[$_]};
}

# set dynamic data
$template->param( no_census_data => $no_census_data, 
                  census_data => $census_data );

print $template->output;

#say scalar @census_data;
#say @census_data;


