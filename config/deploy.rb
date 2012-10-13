# RVM bootstrap: change to your Ruby and GemSet
require 'rvm/capistrano'
set :rvm_ruby_string,  ENV['GEM_HOME'].gsub(/.*\//,"")
set :rvm_type, :user

# app: specify your app name
set :application, "leasing"
set :domain, "localhost"
set :deploy_to, '/webapps/leasing/'
default_run_options[:pty] = true
set :use_sudo, false
role :web, "localhost"
role :app, "localhost"
role :db,  "localhost", :primary => true

# CMS: specify your repository
set :repository,  "."
set :scm, :none

set :user, "jani"

set :deploy_via, :copy

 namespace :deploy do
   task(:start) {}
   task(:stop) {}

   desc 'Restart Application'
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join current_path,'tmp','restart.txt'}"
   end

   task :my, :roles => :app do
     run "echo 1"
   end
 end