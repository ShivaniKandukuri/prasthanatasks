class Book < ApplicationRecord
  belongs_to :author
  validates :price, presence: true
  before_create:capitalize_book_name
  after_create:display_name
  def capitalize_book_name
    puts 'befc'
    name.capitalize if pagescount>5000
  end
  def display_name
    puts 'aftc'
    puts "name is #{name}"
  end
end
