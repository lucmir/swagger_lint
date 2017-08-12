# coding: utf-8
Gem::Specification.new do |gem|
  gem.name          = 'swagger_lint'
  gem.version       = '1.0'
  gem.authors       = ['lucmir']
  gem.email         = ['luccmir@gmail.com']
  gem.homepage      = ''
  gem.summary       = 'Swagger Lint'
  gem.description   = <<-DESCRIPTION
    This gem allows you to easily analyse a swagger description file against
    some good practices for APIs.
  DESCRIPTION

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep %r{^spec/}
  gem.require_paths = %w(lib)

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
