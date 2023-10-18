class CreateNationalParks < ActiveRecord::Migration[7.0]
  def change
    create_table :national_parks do |t|
      t.string :name
      t.string :location
      t.integer :size
      t.date :established_date
      t.boolean :visitor_center

      t.timestamps
    end
  end
end
