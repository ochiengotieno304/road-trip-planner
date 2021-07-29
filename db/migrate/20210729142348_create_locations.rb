class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
