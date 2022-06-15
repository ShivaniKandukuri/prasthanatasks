class AddColumnDistanceToMall < ActiveRecord::Migration[6.0]
  def change
    add_column :malls, :distance, :integer
  end
end
