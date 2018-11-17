class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :code, null: false
      t.decimal :discount, precision: 20, scale: 10, null: false

      t.timestamps
    end
  end
end
