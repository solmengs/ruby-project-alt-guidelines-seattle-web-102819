class Player < ActiveRecord::Base
    has_many :teams
    has_many :games, through: :teams 
end






