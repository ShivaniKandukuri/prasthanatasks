class CreateMobiles < ActiveRecord::Migration[6.0]
  def change
    create_table :mobiles do |t|
      t.string :name
      t.integer :ram
      t.integer :storage
      t.integer :cost
    end
  end
end
