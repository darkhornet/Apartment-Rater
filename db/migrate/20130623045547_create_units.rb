class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :apartment_id
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :sqft
      t.integer :price

      t.timestamps
    end
  end
end
