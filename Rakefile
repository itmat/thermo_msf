require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "thermo_msf"
    gem.summary = %Q{A parser for Thermo MSF files}
    gem.description = %Q{A parser for Thermo Finnegan's Proteome Discoverer MSF file format, which is based on SQLite3}
    gem.email = "angel@upenn.edu"
    gem.homepage = "http://github.com/itmat/thermo_msf"
    gem.authors = ["Angel Pizarro"]
    gem.add_development_dependency "shoulda", ">= 2.11.1"
    gem.add_dependency "sequel", ">= 3.13.0"
    gem.add_dependency "bindata", "~> 1.2.0"
    gem.add_dependency "nokogiri", "~> 1.4.1"
    gem.add_dependency "activesupport", ">= 2.3.8"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "thermo_msf #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "Generate the model class files from the example.msf file and templates"
task :generate_models do
  system "ruby template/schema_query.rb"
end