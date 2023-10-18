class CreateTrails < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :national_park_id
      t.integer :length
      t.boolean :scenic_view

      t.timestamps
    end
  end
end
