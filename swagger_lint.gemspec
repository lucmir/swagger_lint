# coding: utf-8
# frozen_string_literal: true

require 'English'
require File.expand_path('../lib/swagger_lint/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'swagger_lint'
  gem.version       = SwaggerLint::VERSION
  gem.authors       = ['Lucas Cunha']
  gem.email         = ['luccmir@gmail.com']

  gem.summary       = 'Swagger Lint'
  gem.description   = <<-DESCRIPTION
    This gem allows you to easily analyse a swagger description file against
    some good practices for APIs.
  DESCRIPTION
  gem.homepage      = 'https://github.com/lucmir/swagger_lint'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($ORS)
  gem.executables   = ['swagger_lint']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.15'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'json', '~> 2.1'
  gem.add_development_dependency 'rspec', '~> 3.0'
  gem.add_development_dependency 'rubocop', '~> 0.49'
end
