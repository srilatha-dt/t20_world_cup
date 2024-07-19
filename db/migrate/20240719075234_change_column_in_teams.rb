class ChangeColumnInTeams < ActiveRecord::Migration[7.1]
  def change
    change_column :teams, :name, :string, null: false
    change_column :teams, :country, :string, null: false
  end
end
