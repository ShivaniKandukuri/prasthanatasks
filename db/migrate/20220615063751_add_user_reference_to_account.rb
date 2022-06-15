class AddUserReferenceToAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :User, null: false, foreign_key: true
  end
end
