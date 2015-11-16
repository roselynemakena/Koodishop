class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.string :shop_logo
      t.string :shop_location

      t.timestamps null: false
    end
  end
end
