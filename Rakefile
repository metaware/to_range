require 'rake/testtask'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => [:features, :spec]

RSpec::Core::RakeTask.new

#Bundler::GemHelper.install_tasks

#task default: :test