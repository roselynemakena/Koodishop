class AddShopToShopManager < ActiveRecord::Migration
  def change
    add_column :shop_managers, :boolean, :string
  end
end
