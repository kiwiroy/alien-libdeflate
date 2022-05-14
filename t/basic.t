use strict;
use warnings;

use Test::More;
use Test::Alien;
use Alien::libdeflate;

alien_ok 'Alien::libdeflate';

diag "Version Info";
diag join "\t", qw{Mod Lib};
diag join "\t", $Alien::libdeflate::VERSION, Alien::libdeflate->version;

SKIP: {
  skip "system install", 6 if Alien::libdeflate->install_type eq 'system';

  run_ok(['gzip', '-h'])
    ->success
    ->out_like(qr/^usage:\s+gzip\s/mi);

  run_ok(['gunzip', '-h'])
    ->success
    ->out_like(qr/^usage:\s+gunzip\s/mi);
}

done_testing;
