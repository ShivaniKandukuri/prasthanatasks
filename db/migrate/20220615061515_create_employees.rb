class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :department

      t.timestamps
    end
  end
end
