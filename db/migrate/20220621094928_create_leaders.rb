class CreateLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :leaders do |t|
      t.string :first_name
      t.string :last_name
      t.string :age

      t.timestamps
    end
  end
end
