class AddCompanyReferenceToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :Company, null: false, foreign_key: true
  end
end
