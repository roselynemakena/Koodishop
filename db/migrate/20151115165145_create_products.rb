class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.string :product_price
      t.string :product_deal_price
      t.string :product_image
      t.string :product_expiry_date
      t.string :product_category
      t.string :product_quantity

      t.timestamps null: false
    end
  end
end
