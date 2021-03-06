class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}
  validates :description, presence: true
  belongs_to :supplier
  
  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end
  
  def tax
    return (price * 0.09).round(2)
  end
  
  def total
    return price + tax
  end

end
