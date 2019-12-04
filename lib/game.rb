class Game < ActiveRecord::Base
    has_many :teams
    has_many :teams, through: :teams
end 
