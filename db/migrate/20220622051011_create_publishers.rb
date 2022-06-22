class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :organization_name
      t.string :age
      t.string :place

      t.timestamps
    end
  end
end
