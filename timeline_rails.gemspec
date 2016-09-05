# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timeline_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'timeline_rails'
  spec.version       = TimelineRails::VERSION
  spec.authors       = ['Thibaut Roche']
  spec.email         = ['thibaut.roche.perso@gmail.com']

  spec.summary       = %q{Allows you to build a customizable vertical timeline very easily.}
  spec.description   = %q{Allows you to build a customizable vertical timeline very easily.}
  spec.homepage      = 'https://github.com/Insynia/timeline_rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'combustion', '~> 0.5.4'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'activerecord', '>= 4.0'
  spec.add_development_dependency 'actionmailer', '>= 4.0'
  spec.add_development_dependency 'activesupport', '>= 4.0.0'
  spec.add_development_dependency 'actionview', '>= 4.0.0'

  spec.add_runtime_dependency 'i18n', '~> 0.7.0'
  spec.add_runtime_dependency 'railties', '>= 4.0'
  spec.add_runtime_dependency 'sass-rails', '>= 5.0'
  spec
end
