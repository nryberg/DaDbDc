# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

DaDbDc::Application.load_tasks

begin
  require 'navvy/tasks'
rescue LoadError
  task :navvy do
    abort "Couldn't find Navvy." << 
      "Please run `gem install navvy` to use Navvy's tasks."
  end
end
