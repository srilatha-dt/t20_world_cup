class AddFoeriegnKeyToMatches < ActiveRecord::Migration[7.1]
  def change
    add_reference :matches, :team, foreign_key: true
  end
end
