# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parayaz/version'

Gem::Specification.new do |spec|
  spec.name          = 'parayaz'
  spec.version       = Parayaz::VERSION
  spec.authors       = ['lab2023']
  spec.email         = ['info@lab2023.com']
  spec.summary       = %q{Turkish number to text money}
  spec.description   = %q{Turkish number to text money}
  spec.homepage      = 'https://github.com/lab2023/parayaz'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '3.0.4'
end
