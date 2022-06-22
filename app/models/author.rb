# frozen_string_literal: true

# app/models/author.rb
class Author < ApplicationRecord
  validates :first_name, :last_name, presence: true
  before_validation :strip_first_name
  after_validation :display_fullname
  def strip_first_name
    first_name.strip!
  end

  def display_fullname
    a = first_name + last_name
    puts a.upcase
  end
end
