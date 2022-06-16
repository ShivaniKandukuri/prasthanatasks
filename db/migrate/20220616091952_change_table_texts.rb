class ChangeTableTexts < ActiveRecord::Migration[6.0]
  def change
    change_column :texts, :length ,:string
    
  end
end
