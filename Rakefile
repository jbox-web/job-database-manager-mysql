require 'rake'
require 'rspec/core/rake_task'

desc 'Start unit tests'
task test: :default

task :default do
  RSpec::Core::RakeTask.new(:spec) do |config|
    config.rspec_opts = '--color'
  end
  Rake::Task['spec'].invoke
end
