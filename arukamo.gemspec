Gem::Specification.new do |spec|
  spec.name          = 'arukamo'
  spec.version       = File.read('VERSION.semver')
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.email']

  spec.summary       = 'Does object exist, or what?'
  spec.description   = '2 semantic methods to test the presence of objects.'
  spec.homepage      = 'https://github.com/cyril/arukamo.rb'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.9'
  spec.add_development_dependency 'rake',       '~> 10.4'
  spec.add_development_dependency 'yard',       '~> 0.8'
  spec.add_development_dependency 'simplecov',  '~> 0.10'
  spec.add_development_dependency 'rubocop',    '~> 0.31'
end
