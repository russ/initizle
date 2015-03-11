# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'initizle/version'

Gem::Specification.new do |spec|
  spec.name          = "initizle"
  spec.version       = Initizle::VERSION
  spec.authors       = ["Russ Smith"]
  spec.email         = ["russ@bashme.org"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Can't ever spell initialize? Then use Initizle! The lazy way to keep your code working.}
  spec.description   = %q{Can't ever spell initialize? Then use Initizle! The lazy way to keep your code working.}
  spec.homepage      = "https://github.com/russ/initizle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
