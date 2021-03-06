# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blogpost/version'

Gem::Specification.new do |spec|
  spec.name          = "blogpost"
  spec.version       = Blogpost::VERSION
  spec.authors       = ["shoprev"]
  spec.email         = ["admin@shoprev.net"]
  spec.description   = %q{Ruby Blog Post (hatena,athera,269g,cocolog,fc2,goo,jugem,livedoor,maruta,seesaa,webry,wordpress,gmail,sendmail,sonet)}
  spec.summary       = %q{Ruby Blog Post (hatena,athera,269g,cocolog,fc2,goo,jugem,livedoor,maruta,seesaa,webry,wordpress,gmail,sendmail,sonet)}
  spec.homepage      = "https://github.com/shoprev/blogpost"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "atomutil"
  spec.add_runtime_dependency "mail"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
