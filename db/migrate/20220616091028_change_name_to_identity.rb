class ChangeNameToId < ActiveRecord::Migration[6.0]
  def change
    rename_column :products , :name , :identity
  end
end
