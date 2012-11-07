require 'rubygems'
begin
  require 'bundler'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
  exit
end

#require 'bundler/gem_tasks'
require 'rake/testtask'
require 'cucumber/rake/task'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => [:features, :test]

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format=pretty"
end
