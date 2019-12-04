require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

# namespace :db do
#   desc 'seed the database with some dummy data'
#     task :seed do
#       require_relative './db/seeds.rb'
#     end
#   end
  

# def change 
#   create_table  :teams do |t|
#       t.string :name
#       t.integer :point
#       t.string :game_id
#       t.string :player_id
#   end 
# end

# def change
#   create_table :player do |t|
#     t.string :name
#     t.integer :age
#   end
    
# end
# 

desc 'run the run file'
task :run do
  sh "ruby bin/run.rb"
end 
