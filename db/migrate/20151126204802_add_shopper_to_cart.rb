class AddShopperToCart < ActiveRecord::Migration
  def change
    add_reference :carts, :shopper, index: true, foreign_key: true
  end
end
