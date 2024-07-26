class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.string :location, null: false
      t.date :date, null: false
      

      t.timestamps
    end
  end
end
