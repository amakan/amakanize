# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amakanize/version'

Gem::Specification.new do |spec|
  spec.name = 'amakanize'
  spec.version = Amakanize::VERSION
  spec.authors = ['Ryo Nakamura']
  spec.email = ['r7kamura@gmail.com']
  spec.summary = 'Utilities to canonicalize Japanese comic series names and author names.'
  spec.homepage = 'https://github.com/amakan/amakanize'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  spec.add_development_dependency 'bundler'
end
