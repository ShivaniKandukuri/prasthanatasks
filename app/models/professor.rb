class Professor < ApplicationRecord
  validates :age,inclusion: 1..10
  validates :name,length: {minimum:2} ,uniqueness: true
  validates :bio,presence: true
  validates :email,format: {with: /.*@.*/}
end
