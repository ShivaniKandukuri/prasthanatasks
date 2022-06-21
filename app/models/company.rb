# frozen_string_literal: true

# app/models/company.rb
class Company < ApplicationRecord
  has_many :employees
  validates_associated :employees
  validates :name, :place, presence: true
  before_save :display_length
  after_save :capitalize_name
  def display_length
    puts name.length
  end

  def capitalize_name
    puts name.capitalize
  end
end
