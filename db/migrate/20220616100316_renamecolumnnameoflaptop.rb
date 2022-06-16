class Renamecolumnnameoflaptop < ActiveRecord::Migration[6.0]
  def change
    rename_column :laptops , :name ,:description
  end
end
