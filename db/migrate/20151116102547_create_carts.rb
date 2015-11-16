class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :cart_itemscart_total_price
      t.string :cart_item_count

      t.timestamps null: false
    end
  end
end
