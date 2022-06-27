# frozen_string_literal: true

# app/models/doctor.#!/usr/bin/env ruby -wKU
class Doctor < ApplicationRecord
  has_many :patients
  has_many :patients, through: :appointments
  before_update do
    self.specialization = 'oops!' if specialization.nil?
    puts specialization.to_s
  end
  after_update do
    puts specialization.length
  end
end
