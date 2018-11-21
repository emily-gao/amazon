class Product < ApplicationRecord
  validates :name, :price, :department, presence: true

  belongs_to :department
  belongs_to :promotion

  def discounted_price
    return nil unless promotion
    price * promotion.discount
  end
end
