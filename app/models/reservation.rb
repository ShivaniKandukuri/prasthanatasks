# frozen_string_literal: true

# app/model/reservation.rb
class Reservation < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :reservation_date_must_make_sense
  def reservation_date_must_make_sense
    errors.add(:start_date, ' must be before end date') if start_date > end_date
  end
end
