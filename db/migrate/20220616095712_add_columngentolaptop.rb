class AddColumngentolaptop < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops , :generation , :string
  end
end
