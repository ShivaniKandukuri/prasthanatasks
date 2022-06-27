class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :place
      t.string :name

      t.timestamps
    end
  end
end
