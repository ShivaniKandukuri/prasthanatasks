# frozen_string_literal: true

# app/models/employee.rb
class Employee < ApplicationRecord
  validates :name, presence: true
  belongs_to :Company
  before_validation :checking_emp_department
  after_validation :name_after_validation
  before_save :display_beforesave_block
  before_create :capitalize_departmentname
  after_create :display_department_name
  after_save :display_aftersave_block

  def checking_emp_department
    puts 'block before validation'
    name.strip!
  end

  def name_after_validation
    puts 'bloack after validation'
    puts name.to_s
  end

  def beforesave
    puts 'block before saving'
  end

  def beforecreate
    puts 'block before creating'
    self.department = department.capitalize
  end

  def aftercreate
    puts 'block after create'
    puts "Department name is #{department}"
  end

  def aftersave
    puts 'block after save'
  end
end
