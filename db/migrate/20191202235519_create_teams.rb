class CreateTeams < ActiveRecord::Migration[5.2]
  def change 
      create_table  :teams do |t|
          t.string :name
          t.integer :point
          t.string :game_id
          t.string :player_id
      end 
    end
    
end
