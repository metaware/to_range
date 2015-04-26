require 'rake/testtask'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

if RUBY_VERSION > '1.9.3'
  task :default => [:features, :spec]
else
  task :default => [:spec]
end

RSpec::Core::RakeTask.new

#Bundler::GemHelper.install_tasks

#task default: :test