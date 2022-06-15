class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :health_issue

      t.timestamps
    end
  end
end
