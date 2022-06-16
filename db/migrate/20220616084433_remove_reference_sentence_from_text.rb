class RemoveReferenceSentenceFromText < ActiveRecord::Migration[6.0]
  def change
    remove_reference :texts, :Sentence, null: false, foreign_key: true
  end
end
