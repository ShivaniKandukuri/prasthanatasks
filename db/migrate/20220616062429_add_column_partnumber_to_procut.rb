class AddColumnPartnumberToProcut < ActiveRecord::Migration[6.0]
  def change
    add_column :procuts, :Partnumber, :integer
  end
end
