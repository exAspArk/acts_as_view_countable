# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_view_countable/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_view_countable"
  spec.version       = ActsAsViewCountable::VERSION
  spec.authors       = ["Evgeny Li"]
  spec.email         = ["exaspark@gmail.com"]
  spec.summary       = %q{Lightweight resource's view counter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord",  ['>= 3', '< 5']

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
