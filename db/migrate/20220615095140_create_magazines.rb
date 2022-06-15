class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :name
      t.text :descriptoin
      t.integer :cost
    end
  end
end
