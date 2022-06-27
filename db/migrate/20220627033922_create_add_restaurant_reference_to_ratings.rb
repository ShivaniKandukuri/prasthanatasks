class CreateAddRestaurantReferenceToRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :add_restaurant_reference_to_ratings do |t|
      t.references :Restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
