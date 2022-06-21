class Book < ApplicationRecord
  belongs_to :author
  validates :price, presence: true
  before_create:befc
  after_create:aftc
  def befc
    puts 'befc'
    name.capitalize if pagescount>5000
  end
  def aftc
    puts 'aftc'
    puts "name is #{name}"
  end
end
