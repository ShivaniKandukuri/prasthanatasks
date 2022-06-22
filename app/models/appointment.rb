# frozen_string_literal: true

# app/models/appointment.#!/usr/bin/env ruby -wKU
class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  validates :time, presence: true
  before_validation :check_day
  after_validation :set_time
  def check_day
    puts 'change the timings of apointment' if day.nil?
  end

  def set_time
    self.time = day
    puts time
    puts 'this is the time and day of Appointment'
  end
end
