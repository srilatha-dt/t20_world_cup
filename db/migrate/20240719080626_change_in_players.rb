class ChangeInPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :descriptionn, :text
  
  end
end
