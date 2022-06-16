class CreateLaptops < ActiveRecord::Migration[6.0]
  def change
    create_table :laptops do |t|
      t.string :name
      t.integer :cost
      t.integer :ram
    end
  end
end
