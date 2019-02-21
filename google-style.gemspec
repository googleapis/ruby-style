# Copyright 2019 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Gem::Specification.new do |gem|
  gem.name          = "google-style"
  gem.version       = "0.1.0"

  gem.authors       = ["Graham Paye"]
  gem.email         = ["paye@google.com"]
  gem.description   = "Shared style guide for Google's ruby projects"
  gem.summary       = "Collection of rubocop rules"
  gem.homepage      = "https://github.com/googleapis/ruby-style/tree/master/"
  gem.license       = "Apache-2.0"

  gem.files         = ["CONTRIBUTING.md", "CODE_OF_CONDUCT.md", "LICENSE",
                       "README.md", "google-style.yml"]

  gem.required_ruby_version = ">= 2.2.0"

  gem.add_dependency "rubocop", "~> 0.64.0"
  gem.add_development_dependency "bundler", "~> 1.17"
  gem.add_development_dependency "rake", "~> 12.3"
end
