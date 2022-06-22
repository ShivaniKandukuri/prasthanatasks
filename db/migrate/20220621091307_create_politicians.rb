class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :party
      t.integer :age

      t.timestamps
    end
  end
end
