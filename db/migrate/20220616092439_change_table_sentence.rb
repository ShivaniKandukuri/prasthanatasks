class ChangeTableSentence < ActiveRecord::Migration[6.0]
  def change
    change_table :sentences do |t|
      t.rename :count ,:countofletters
      
    end
  end
end
