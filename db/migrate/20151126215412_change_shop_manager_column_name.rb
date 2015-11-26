class ChangeShopManagerColumnName < ActiveRecord::Migration
  def change
    rename_column :shop_managers, :shop_manager_picture, :shop_manager_email
  end
end
