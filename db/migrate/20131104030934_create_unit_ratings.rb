class CreateUnitRatings < ActiveRecord::Migration
  def change
    create_table :unit_ratings do |t|
      t.integer :unit_id
      t.integer :category_id
      t.float :rating

      t.timestamps
    end
  end
end
