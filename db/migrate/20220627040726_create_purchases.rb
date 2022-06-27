class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :cost
      t.integer :quantity
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
