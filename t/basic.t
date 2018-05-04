use strict;
use warnings;

use Test::More;
use Test::Alien;
use Alien::libdeflate;

alien_ok 'Alien::libdeflate';

run_ok(['gzip', '-h'])
  ->success
  ->out_like(qr/^usage:\s+gzip\s/mi);

run_ok(['gunzip', '-h'])
  ->success
  ->out_like(qr/^usage:\s+gunzip\s/mi);

run_ok(['checksum', '-h'])
  ->success
  ->out_like(qr/^usage:\s+checksum\s/mi);

done_testing;
