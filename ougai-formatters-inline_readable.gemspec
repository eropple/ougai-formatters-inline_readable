# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ougai/formatters/inline_readable/version"

Gem::Specification.new do |spec|
  spec.name          = "ougai-formatters-inline_readable"
  spec.version       = Ougai::Formatters::INLINE_READABLE_VERSION
  spec.authors       = ["Ed Ropple"]
  spec.email         = ["ed@edropple.com"]
  spec.license       = "MIT"

  spec.summary       = "A simple single-line formatter for Ougai logs."
  spec.homepage      = "https://github.com/eropple/ougai-formatters-inline_readable"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "ougai", "~> 1.5"
  spec.add_runtime_dependency "awesome_print", "~> 1.8"
end
