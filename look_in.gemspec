# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'look_in/version'

Gem::Specification.new do |spec|
  spec.name          = "look_in"
  spec.version       = LookIn::VERSION
  spec.authors       = ["Jason R. Clark"]
  spec.email         = ["jason@jasonrclark.net"]

  spec.summary       = %q{Easier constant lookups.}
  spec.description   = %q{Tired of typing long module names in your Ruby? Use look_in to avoid the pain!}
  spec.homepage      = "https://github.com/jasonrclark/look_in"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.6"
end
