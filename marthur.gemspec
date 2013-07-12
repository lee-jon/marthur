# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marthur/version'

Gem::Specification.new do |spec|
  spec.name          = "marthur"
  spec.version       = Marthur::VERSION
  spec.authors       = ["Joe James"]
  spec.email         = ["joe.james@alliants.co.uk"]
  spec.description   = %q{Command line tool to help author an ebook and writing in markdown}
  spec.summary       = %q{Markdown e-book author command line application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
