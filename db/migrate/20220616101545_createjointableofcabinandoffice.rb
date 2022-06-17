class Createjointableofcabinandoffice < ActiveRecord::Migration[6.0]
  def change
    create_join_table :offices , :cabins
  end
end
