class AddColumnDetailsToProcut < ActiveRecord::Migration[6.0]
  def change
    add_column :procuts, :Details, :text
  end
end
