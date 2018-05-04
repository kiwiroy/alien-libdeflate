package Alien::libdeflate;

use strict;
use warnings;
use base qw{ Alien::Base };

our $VERSION = '0.01';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Alien::libdeflate - Fetch/build/stash the libdeflate headers and libs for
L<libdeflate|https://github.com/ebiggers/libdeflate>

=head1 SYNOPSIS

In your C<Makefile.PL> with L<ExtUtils::MakeMaker>.

  use Alien::libdeflate;
  use ExtUtils::MakeMaker;
  use Alien::Base::Wrapper qw( Alien::libdeflate !export );
  use Config;

  WriteMakefile(
    # ...
    Alien::Base::Wrapper->mm_args,
    # ...
    );

In your script or module.

  use Alien::libdeflate;
  use Env qw( @PATH );

  unshift @PATH, Alien::libdeflate->bin_dir;

=head1 DESCRIPTION

Download, build, and install the libdeflate C headers and libraries into a
well-known location, C<<< Alien::libdeflate->dist_dir >>>, from whence other
packages can make use of them.

The version installed will be the latest release on the master branch from
the libdeflate GitHub L<repository|https://github.com/ebiggers/libdeflate>.

=head1 AUTHOR

kiwiroy

=cut
