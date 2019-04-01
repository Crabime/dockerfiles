use strict;
use warnings FATAL => 'all';
use JSON;

my %a = ("a"=>123 ,"b"=>456);

my $json = encode_json \%a;

print $json