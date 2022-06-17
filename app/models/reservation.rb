class Reservation < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :reservation_date_must_make_sense
  def reservation_date_must_make_sense
    if start_date > end_date
      errors.add(:start_date, " must be before end date")
    end
  end

end
