class Promotion < ApplicationRecord
  validates :code, :discount, presence: true

  has_many :products
end
