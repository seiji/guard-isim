# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/isim/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-isim"
  spec.version       = Guard::IsimVersion::VERSION
  spec.authors       = ["Seiji Toyama"]
  spec.email         = ["seijit@me.com"]
  spec.description   = %q{Guard gem for iOS Simulator}
  spec.summary       = %q{Guard::Isim automatically reloads your mobile safari on iOS Simulator."}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
