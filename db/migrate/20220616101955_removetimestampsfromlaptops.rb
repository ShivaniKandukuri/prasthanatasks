class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_timestamps(:laptops)
  end
end
