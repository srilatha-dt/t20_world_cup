class AddColumnToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :role, :string, null: false
  end
end
