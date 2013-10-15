# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-matchers"
  spec.version       = "0.0.1"
  spec.authors       = ["Sean Doyle"]
  spec.email         = ["sean.p.doyle24@gmail.com"]
  spec.description   = %q{RSpec matchers for Sidekiq}
  spec.summary       = %q{RSpec matchers for Sidekiq}
  spec.homepage      = "https://github.com/seanpdoyle/sidekiq-matchers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sidekiq", "~> 2.15"
end
