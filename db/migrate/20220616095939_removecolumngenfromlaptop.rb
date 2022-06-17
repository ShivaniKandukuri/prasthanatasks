class Removecolumngenfromlaptop < ActiveRecord::Migration[6.0]
  def change
    remove_column :laptops, :generation, :string
  end
end
