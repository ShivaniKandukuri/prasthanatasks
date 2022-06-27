class Account < ApplicationRecord
  belongs_to :User
  validates :accoutnumber, presence: true
  validates :ifsccode, presence: true

end
