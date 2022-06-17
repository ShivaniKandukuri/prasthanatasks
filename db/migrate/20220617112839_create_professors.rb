class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
