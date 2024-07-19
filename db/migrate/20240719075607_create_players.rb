class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null: false 
      t.integer :age, null: false
      t.string :position, null: false
      t.integer :user_id
      t.boolean :is_captain, null: false, :default => false
      t.boolean :is_active, null: false, :default => true
    
      t.timestamps
    end
  end
end
