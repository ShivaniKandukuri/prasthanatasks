class Removerefernceofstorefromlaptop < ActiveRecord::Migration[6.0]
  def change
    remove_reference :laptops ,:store
  end
end
