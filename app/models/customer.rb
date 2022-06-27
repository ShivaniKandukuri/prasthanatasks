# frozen_string_literal: true

# app/models/customer.rb
class Customer < ApplicationRecord
  before_update do
    self.name = name.capitalize + age.to_s
    puts name
  end
  after_update do
    puts name.downcase
  end
end
