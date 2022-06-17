class Changecolumnnameoflaptop < ActiveRecord::Migration[6.0]
  def change
    change_column :laptops ,:name ,:text
  end
end
