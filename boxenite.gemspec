# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boxenite/version'

Gem::Specification.new do |spec|
  spec.name          = 'boxenite'
  spec.version       = Boxenite::VERSION
  spec.authors       = ['Domas Bitvinskas', 'Colin Treseler']
  spec.email         = ['domas.bitvinskas@me.com', 'colin@boxenite.com']
  spec.summary       = %q(CLI)
  spec.description   = %q(Boxenite CLI)
  spec.homepage      = 'https://github.com/Boxenite/cli'
  spec.license       = 'MIT'
  spec.required_ruby_version = '~> 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['bxe']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rest-client', '1.8.0'
  spec.add_development_dependency 'pry', '~> 0.9'
  spec.add_development_dependency 'pry-stack_explorer', '~> 0.4'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
end
