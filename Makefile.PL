#!/usr/bin/perl -w
# $Id: Makefile.PL 2693 2008-01-02 09:54:19Z hospelt $
use 5.006001;
use ExtUtils::MakeMaker;
WriteMakefile
    (NAME              => 'WEC::RecordTailer',
     VERSION_FROM      => 'lib/WEC/RecordTailer.pm', # finds $VERSION
     PREREQ_PM         => {
         "Exporter::Tidy"	=> 0.05,
         "Test::More"		=> 0.11,	# For the tests only
     },
     ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (AUTHOR         => 'Ton Hospel <WEC::RecordTailer@ton.iguana.be>') : ()),
     $^O eq "MSWin32" ? (
         PM_FILTER	=> '$(PERL) -p -e1',
     ) : (),
     clean		=> {
         FILES => '$(DISTNAME).ppd ppm cover_db',
     },
);

# START MY
# END MY
