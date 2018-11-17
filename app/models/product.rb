class Product < ApplicationRecord
  validates :name, :price, :department, presence: true

  belongs_to :department
  belongs_to :promotion, optional: true

  def discounted_price
    nil unless promotion
    price * promotion.discount
  end
end
