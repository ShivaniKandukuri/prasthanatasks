# frozen_string_literal: true

# app/models/author.rb
class Author < ApplicationRecord
  validates :first_name, :last_name, presence: true
  before_validation :befvalid
  after_validation :afvalid
  def befvalid
    first_name.strip!
  end

  def afvalid
    a = first_name + last_name
    puts a.upcase
  end
end
