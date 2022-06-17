class CreateJoinTableProductsCategories < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :categories do |t|
    end
  end
end
