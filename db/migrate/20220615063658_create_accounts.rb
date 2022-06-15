class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :accoutnumber
      t.integer :ifsccode
      t.string :accoutholdername
      t.string :branchname

      t.timestamps
    end
  end
end
