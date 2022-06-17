class CreateJoinTableCustomerProcut < ActiveRecord::Migration[6.0]
  def change
    create_join_table :customers, :procuts 

    end
  end
end
