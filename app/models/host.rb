class Host < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true, numericality: true
  validates :dateofbirth, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },presence: true
  validates :phonenumber, presence: true,numericality: true,length: { minimum: 10, maximum: 12 }
  validates :pincode, presence: true,numericality: true,length: {minimum: 6, maximum: 6}
  EDUCATION = %w/ 10th 12th b.tech /
  validates :education, presence: true
end
