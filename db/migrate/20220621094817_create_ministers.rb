class CreateMinisters < ActiveRecord::Migration[6.0]
  def change
    create_table :ministers do |t|
      t.string :name
      t.string :age
      t.string :party

      t.timestamps
    end
  end
end
