class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :cart_item_count
      t.string :cart_total_price

      t.timestamps null: false
    end
  end
end
