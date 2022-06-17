class AddConsumerReferenceToProcut < ActiveRecord::Migration[6.0]
  def change
    add_reference :procuts, :consumer, null: false, foreign_key: true
  end
end
