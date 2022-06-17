class Addstoreferencetolaptop < ActiveRecord::Migration[6.0]
  def change
    add_reference :laptops, :store
  end
end
