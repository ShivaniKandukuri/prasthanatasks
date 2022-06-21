# frozen_string_literal: true

# app/models/company.rb
class Company < ApplicationRecord
  has_many :employees
  validates_associated :employees
  validates :name, :place, presence: true
  before_save :bs
  after_save :as
  def bs
    puts name.length
  end

  def as
    puts name.capitalize
  end
end
