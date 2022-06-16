class AddColumnAddressToConsumer < ActiveRecord::Migration[6.0]
  def change
    add_column :consumers, :address, :text
  end
end
