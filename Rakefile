require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :checkin do
  sh 'bundle exec rubocop -a && bundle exec rspec'
end

