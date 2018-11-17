class Department < ApplicationRecord
  validates :name, presence: true

  has_many :products, dependent: :destroy
end
