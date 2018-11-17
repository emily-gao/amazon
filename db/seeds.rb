# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times { Department.create name: Faker::Commerce.unique.department(1) }

5.times do
  Promotion.create(
    code: Faker::Commerce.unique.promotion_code(digits = 2),
    discount: Faker::Number.unique.decimal(0, 2)
  )
end

def create_product(promotion_id)
  Product.create(
    name: Faker::Commerce.unique.product_name,
    price: Faker::Commerce.price,
    department: Department.find(Department.ids.shuffle.first),
    promotion: promotion_id,
  )
end

50.times { create_product(Promotion.find(Promotion.ids.shuffle.first)) }
20.times { create_product(nil) }
