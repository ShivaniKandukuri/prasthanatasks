class Product < ApplicationRecord
  validates :name ,presence:true ,uniqueness:true ,length: {in: 2..20}, if: :today_is_friday?
  validates :price, presence:true ,length: {minimum:4 ,too_short: "must have %{count} characters"} , numericality:{greater_than:40}
  validates :weight, numericality:true
  validates :in_stock,presence:true,inclusion:{in:[true,false], message:"this should not be null"}
  def today_is_friday?
    Date.today.friday?
  end
  validates :expiration_date,presence:true
  validate :exp_d
  def exp_d
    if expiration_date.match(/\d{4}-\d{2}-\d{2}/)
      if Date.strptime(expiration_date,'%Y-%m-%d')
        puts expiration_date
      end
    end
  end
end
