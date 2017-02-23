# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'source-sans-pro/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'source-sans-pro-rails'
  spec.version       = SourceSansPro::Rails::VERSION
  spec.authors       = ['Jeff Fraser']
  spec.email         = ['jfraser@breuer.com']
  spec.description   = "Add Adobe's Source Sans Pro Font to your Rails app through the asset pipeline"
  spec.summary       = 'The Adobe Source Sans Pro font in the asset pipeline'
  spec.homepage      = 'https://github.com/veracross/source-sans-pro-rails'
  spec.licenses      = ['MIT', 'SIL Open Font License']

  spec.files = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sass-rails'
  spec.add_development_dependency 'tzinfo'
end
