class CreateOffice < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :place
      t.integer :countofworkers
    end
  end
end
