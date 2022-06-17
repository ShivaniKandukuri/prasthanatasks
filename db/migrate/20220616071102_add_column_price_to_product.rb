class AddColumnPriceToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :Price, :integer
  end
end
