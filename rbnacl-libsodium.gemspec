# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbnacl/libsodium/version'

Gem::Specification.new do |spec|
  spec.name          = "rbnacl-libsodium"
  spec.version       = RbNaCl::Libsodium::VERSION
  spec.authors       = ["Artiom Di"]
  spec.date          = Time.now.strftime('%Y-%m-%d')
  spec.email         = ["kron82@gmail.com"]
  spec.summary       = %q{rbnacl with bundled libsodium}
  spec.homepage      = "https://github.com/cryptosphere/rbnacl-libsodium"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files         += Dir.glob("vendor/libsodium/**/*")
  spec.require_paths = ["lib"]

  spec.extensions    = ['ext/rbnacl/extconf.rb']

  spec.add_runtime_dependency "rbnacl", "~> 3.0", ">= 3.0.1"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
