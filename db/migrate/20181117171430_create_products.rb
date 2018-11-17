class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.numeric :price, null: false
      t.references :department, foreign_key: true, null: false
      t.references :promotion, foreign_key: true

      t.timestamps
    end
  end
end
