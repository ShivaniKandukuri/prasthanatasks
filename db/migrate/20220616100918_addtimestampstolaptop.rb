class Addtimestampstolaptop < ActiveRecord::Migration[6.0]
  def change
    add_timestamps(:laptops,null:true)
  end
end
