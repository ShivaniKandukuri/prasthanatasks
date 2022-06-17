class Company < ApplicationRecord
  has_many :employees
  validates_associated :employees
end
