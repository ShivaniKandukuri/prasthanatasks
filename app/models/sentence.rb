# frozen_string_literal: true

# app/models/sentence.rb
class Sentence < ApplicationRecord
  after_commit :display_count
  def display_count
    puts "cout of lettters in sentence is #{countofletters}"
  end
end
