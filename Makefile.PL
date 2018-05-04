use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
  ABSTRACT_FROM => 'lib/Alien/libdeflate.pm',
  DISTNAME      => 'Alien-libdeflate',
  NAME          => 'Alien::libdeflate',
  VERSION_FROM  => 'lib/Alien/libdeflate.pm',
  MIN_PERL_VERSION => '5.008009',
  META_MERGE => {
    resources => {
      bugtracker => 'https://github.com/kiwiroy/alien-libdeflate/issues',
      homepage   => 'https://github.com/kiwiroy/alien-libdeflate',
      repository => 'https://github.com/kiwiroy/alien-libdeflate.git',
    },
  },
  CONFIGURE_REQUIRES => {
    'Alien::Build' => 0,
  },
));

sub MY::postamble {
  $abmm->mm_postamble;
}
