lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "amakanize/version"

Gem::Specification.new do |spec|
  spec.name          = "amakanize"
  spec.version       = Amakanize::VERSION
  spec.authors       = ["r7kamura"]
  spec.email         = ["r7kamura@gmail.com"]
  spec.summary       = "Utilities to canonicalize book titles and author names."
  spec.homepage      = "https://github.com/amakan/amakanize"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.5.0"
end
