class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, :numericality => {:greater_than => 0}

  def price_in_dollars
    price_in_dollars = price.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end

end
