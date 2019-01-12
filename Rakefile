require "./config/data_mapper"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task :default => [:migration, :spec]

namespace "db" do
  desc "Truncates tables"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Migrated successfully"
  end

  desc "Updates tables (safely)"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Upgraded successfully"
  end
end

task :migration => ["db:auto_migrate"]
