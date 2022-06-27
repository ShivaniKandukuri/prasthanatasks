# frozen_string_literal: true

<<<<<<< HEAD
# app/models/category.rb
class Category < ApplicationRecord
  validates :name, presence: true
  before_create :upcase_name
  after_create :display_name
  def upcase_name
    puts 'block before creation'
    self.name = name.upcase
  end

  def display_name
    puts name
  end
=======
class Category < ApplicationRecord
>>>>>>> 8067c6d88b433112b19adb0855b9042d08d439e5
end
