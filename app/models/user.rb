# frozen_string_literal: true

# app/models/user.rb
class User < ApplicationRecord
  has_one :Account
  validates :name, :age, presence: true
  before_validation :name_should_have_value
  after_validation :am_i_anonymous
  after_create :your_creating
  def name_should_have_value
    puts 'i am before validation block'
    if name.nil?
      self.name = 'anonymous' unless age.zero?
    end
    puts name
  end
  before_create do
    puts 'I am before create block'
    self.gender = name.capitalize if gender.nil?
  end
  def am_i_anonymous
    puts 'I am a block after validation'
    if name == 'anonymous'
      puts 'your are in trouble'
    else
      puts 'your are good to go'
    end
  end

  def your_creating
    puts 'I am block after creating'
    puts "the final name after all validations is #{name}"
  end
  before_save do
    puts 'I am blocak before save'
    self.name = name.upcase
    puts "encrypted name #{name}"
  end
  after_save do
    puts 'I am block after save'
    self.name = name.downcase
    puts "decrypted name #{name}"
  end
end
