# frozen_string_literal: true

# app/models/category.rb
class Category < ApplicationRecord
  validates :name, presence: true
  before_create :befc
  after_create :aftc
  def befc
    puts 'block before creation'
    self.name = name.upcase
  end

  def aftc
    puts name.to_s
  end
end
