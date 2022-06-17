class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :dateofbirth
      t.string :email
      t.string :phonenumber
      t.string :pincode
      t.string :place
      t.string :education

      t.timestamps

    end
  end
end
