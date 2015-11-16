class CreateShopManagers < ActiveRecord::Migration
  def change
    create_table :shop_managers do |t|
    	t.string :shop_manager_name
    	t.string :shop_manager_picture
      t.timestamps null: false
    end
  end
end
