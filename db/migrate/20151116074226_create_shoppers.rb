class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
    	t.string :shopper_name
    	t.string :shopper_email
    	t.string :shopper_phone_number
    	t.integer :shopper_longitude
    	t.integer :shopper_latitude
      t.timestamps null: false
    end
  end
end
