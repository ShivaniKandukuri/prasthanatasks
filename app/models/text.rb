<<<<<<< HEAD
# frozen_string_literal: true

# app/models/text.#!/usr/bin/env ruby -wKU
class Text < ApplicationRecord
  before_destroy :checks_if_present
  after_destroy :destroyed
  def checks_if_present
    puts 'i am a block before destroyed'
    if length != 0
      puts 'you can move ahead'
    else
      puts 'please enter valid length'
    end
  end

  def destroyed
    puts 'i am a block after destroyed'
  end
=======
class Text<ApplicationRecord
  validates:length,presence:true
>>>>>>> 8067c6d88b433112b19adb0855b9042d08d439e5
end
