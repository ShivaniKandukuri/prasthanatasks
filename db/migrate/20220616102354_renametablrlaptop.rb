class Renametablrlaptop < ActiveRecord::Migration[6.0]
  def change
    rename_table('laptops','delllaptops')
  end
end
