class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
      create_table :players do |t|
        t.string :name
        t.integer :age
      end
    end 
end
