#! /usr/local/bin/perl

use ExtUtils::MakeMaker;

# Determine byte order
$is_little_endian = unpack('c', pack('s', 1));
$byte_order = $is_little_endian ? "LITTLE_ENDIAN" : "BIG_ENDIAN";

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile being created.
WriteMakefile(
	'NAME' => 'Crypt::IDEA',
	'DISTNAME' => 'Crypt-IDEA',
	'VERSION_FROM' => 'IDEA.pm',
	'OBJECT' => 'IDEA.o _idea.o',
	'DEFINE' => "-DBYTE_ORDER=$byte_order",
	'dist'   => {COMPRESS=>'gzip', SUFFIX=>'gz'}
);

