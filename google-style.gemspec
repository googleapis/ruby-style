# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "google-style"
  gem.version       = "0.1.0"

  gem.authors       = ["Graham Paye"]
  gem.email         = ["paye@google.com"]
  gem.description   = "Shared style guide for Google's ruby projects"
  gem.summary       = "Collection of rubocop rules"
  gem.homepage      = "https://github.com/googleapis/ruby-style/tree/master/"
  gem.license       = "Apache-2.0"

  gem.files         = ["CONTRIBUTING.md", "CODE_OF_CONDUCT.md", "LICENSE"]

  gem.required_ruby_version = ">= 2.3.8"

  gem.add_dependency "rubocop", "~> 0.62.0"
  gem.add_dependency "rubocop-rspec", "~> 1.32"
  gem.add_development_dependency "bundler", "~> 1.17"
  gem.add_development_dependency "rake", "~> 12.3"
end
