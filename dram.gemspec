# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dram/version'

Gem::Specification.new do |spec|
  spec.name          = "dram"
  spec.version       = Dram::VERSION
  spec.authors       = ["Colin Rymer"]
  spec.email         = ["colin.rymer@gmail.com"]
  spec.summary       = %q{Downloader for RubyTapas and ElixirSips}
  spec.description   = %q{Downloader for RubyTapas and ElixirSips based on the work by @leafac and @benjamintanweihao.}
  spec.homepage      = "https://github.com/colinrymer/dram"
  spec.license       = "WTFPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mechanize"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "debugger"
  spec.add_development_dependency "pry-debugger"

end
