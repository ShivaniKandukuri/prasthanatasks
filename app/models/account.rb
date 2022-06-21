# frozen_string_literal: true

# app/models/account.rb
class Account < ApplicationRecord
  belongs_to :User
  before_validation :befvalid
  validates :accoutnumber, presence: true
  before_validation :afvalid
  before_save :changebranchname
  before_update :details_before_update
  after_update :details_after_update
  after_save :aftersave
  def befvalid
    puts 'enter branch name'
  end

  def afvalid
    self.branchname = 'kphb'
  end

  def changebranchname
    self.branchname = 'jntu'
  end

  def details_before_update
    puts branchname
  end

  def details_after_update
    self.branchname = branchname + accoutholdername
    puts branchname
  end

  def aftersave
    puts "#{branchname}#{ifsccode}"
  end

  def aftercommit
    puts 'block after commit'
  end
end
