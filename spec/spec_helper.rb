require 'rubygems'
require 'bundler'
require 'simplecov'
require 'rspec'

require 'jenkins_plugin_base/loader'
JenkinsPluginBase::Loader.new.load!

## Configure SimpleCov
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter
]

## Start Simplecov
SimpleCov.start do
  add_filter '/spec/'
end

## Configure RSpec
RSpec.configure do |config|
  config.color = true
  config.fail_fast = false
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

models_dir = Pathname(__FILE__).dirname.join('../models').to_s
models     = File.join(models_dir, '**', '*.rb')

$:.unshift models_dir

Dir[models].each { |file| require file unless File.basename(file) == 'job_database_manager_mysql.rb' }


class FooAdapter < JobDatabaseManagerMysql::MysqlAdapter
end


def build_adapter
  launcher = double('launcher')
  FooAdapter.new(launcher, 'foo', 'pass', '127.0.0.1', 3306, '/usr/bin/mysql')
end


def build_db_creator(opts = {})
  options = {
    'job_db_name' => 'foo_db',
    'job_db_user' => 'foo_user',
    'job_db_pass' => 'foo_pass'
  }.merge(opts)
  Builders::CreateMysqlDatabase.new(options)
end


def build_db_destroyer(opts = {})
  options = {
    'job_db_name' => 'foo_db',
    'job_db_user' => 'foo_user',
    'job_db_pass' => 'foo_pass'
  }.merge(opts)
  Publishers::DestroyMysqlDatabase.new(options)
end
