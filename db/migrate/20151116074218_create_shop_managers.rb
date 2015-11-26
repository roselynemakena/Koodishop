class CreateShopManagers < ActiveRecord::Migration
  def change
    create_table :shop_managers do |t|
    	t.string :shop_manager_name
      t.string :shop_manager_email
      t.timestamps null: false
    end
  end
end
