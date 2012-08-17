use Module::Build;

my $class = Module::Build->subclass(code => <<'EOF');

sub ACTION_build
{
	my $self = shift;
	$self->SUPER::ACTION_build(@_);
	$self->run_perl_script('scripts/copy.config.pl');
}
EOF

$class -> new
(
	module_name    => 'Benchmark::Featureset::StopwordLists',
	license        => 'artistic',
	dist_abstract  => 'Compare various stopword list modules',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
	Test::More => 0.94,
	Test::Pod  => 1.44,
	},
	configure_requires =>
	{
		Module::Build => 0.3800,
	},
	requires =>
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
	Text::Xslate             => 1.5010,
	warnings                 => 1.12,
	},
) -> create_build_script();
