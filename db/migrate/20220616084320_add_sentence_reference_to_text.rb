class AddSentenceReferenceToText < ActiveRecord::Migration[6.0]
  def change
    add_reference :texts, :Sentence, null: false, foreign_key: true
  end
end
