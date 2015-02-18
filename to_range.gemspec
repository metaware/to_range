# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_range/version'

Gem::Specification.new do |spec|
  spec.name          = "to_range"
  spec.version       = ToRange::VERSION
  spec.authors       = ["Jasdeep Singh"]
  spec.email         = ["jasdeep@metawarelabs.com"]
  spec.description   = %q{Gem to parse Range like strings to actual Range Objects}
  spec.summary       = %q{Ruby String extensiion to parse Range like strings to actual Range Objects}
  spec.homepage      = "http://github.com/metaware/to_range"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
