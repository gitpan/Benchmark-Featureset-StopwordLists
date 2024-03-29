use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
	AUTHOR   => 'Ron Savage (ron@savage.net.au)',
	ABSTRACT => 'Compare various stopword list modules',
	) : (),
	clean =>
	{
	FILES => 'blib/* Makefile MANIFEST Benchmark-Featureset-StopwordLists-*'
	},
	dist =>
	{
	COMPRESS => 'gzip',
	SUFFIX   => 'gz'
	},
	DISTNAME  => 'Benchmark-Featureset-StopwordLists',
	NAME      => 'Benchmark::Featureset::StopwordLists',
# Next line runs copy.config.pl when user runs 'make'.
# Warning: '...' => 0 is OK but => '' or undef are ignored.
	PL_FILES  => {'scripts/copy.config.pl' => 'Copying...'},
	PREREQ_PM =>
	{
	Config                   => undef,
	Config::Tiny             => 2.13,
	Date::Simple             => 3.03,
	File::Copy               => 2.21,
	File::HomeDir            => 0.99,
	Hash::FieldHash          => 0.12,
	Lingua::EN::StopWordList => 1.00,
	Lingua::EN::StopWords    => 0.1,
	Lingua::StopWords        => 0.09,
	Module::Version          => 0.12,
	Path::Class              => 0.24,
	strict                   => 1.04,
	Test::More               => 0.94,
	Test::Pod                => 1.44,
	Text::Xslate             => 1.5010,
	warnings                 => 1.12,
	},
	VERSION_FROM => 'lib/Benchmark/Featureset/StopwordLists.pm',
);
