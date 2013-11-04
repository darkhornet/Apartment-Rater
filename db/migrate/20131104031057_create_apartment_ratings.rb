class CreateApartmentRatings < ActiveRecord::Migration
  def change
    create_table :apartment_ratings do |t|
      t.integer :apartment_id
      t.integer :category_id
      t.float :rating

      t.timestamps
    end
  end
end
