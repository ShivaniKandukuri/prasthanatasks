# frozen_string_literal: true

# app/models/account.rb
class Account < ApplicationRecord
  belongs_to :User
  before_validation :enter_branch_name
  validates :accoutnumber, presence: true
  before_validation :set_branch_name
  before_save :changebranchname
  before_update :details_before_update
  after_update :details_after_update
  after_save :display_modifiedname
  after_commit:display_after_commit_comment
  def enter_branch_name
    puts 'enter branch name'
  end

  def set_branch_name
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

  def display_modifiedname
    puts "#{branchname}#{ifsccode}"
  end

  def display_after_commit_comment
    puts 'block after commit'
  end
end
