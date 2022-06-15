class AddTimestampsToMalls < ActiveRecord::Migration[6.0]
  def change
    add_column :malls, :created_at,:datetime
    add_column :malls, :updated_at,:datetime

  end
end
