class AddShopToShopManager < ActiveRecord::Migration
  def change
    add_reference :shop_managers, :shop, index: true, foreign_key: true
  end
end
