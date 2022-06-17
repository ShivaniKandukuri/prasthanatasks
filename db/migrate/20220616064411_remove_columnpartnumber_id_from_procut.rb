class RemoveColumnpartnumberIdFromProcut < ActiveRecord::Migration[6.0]
  def change
    remove_column :procuts, :partnumber_id, :integer
  end
end
