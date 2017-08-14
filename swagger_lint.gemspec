# coding: utf-8
#lib = File.expand_path("../lib", __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require "swagger_lint/version"

require File.expand_path('../lib/swagger_lint/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "swagger_lint"
  gem.version       = SwaggerLint::VERSION
  gem.authors       = ["Lucas Cunha"]
  gem.email         = ["luccmir@gmail.com"]

  gem.summary       = %q{Swagger Lint}
  gem.description   = <<-DESCRIPTION
    This gem allows you to easily analyse a swagger description file against
    some good practices for APIs.
  DESCRIPTION
  gem.homepage      = "https://github.com/lucmir/swagger_lint"
  gem.license       = "MIT"

  #gem.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end
  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["swagger_lint"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.15"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency 'json'
end
