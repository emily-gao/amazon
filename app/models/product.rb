class Product < ApplicationRecord
  validates :name, :price, :department, presence: true

  belongs_to :department
  belongs_to :promotion, optional: true
end
