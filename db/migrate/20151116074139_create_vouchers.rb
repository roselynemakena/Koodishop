class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
    	t.string :voucher_owner
    	t.integer :voucher_items
    	t.datetime :voucher_expiry_date
      t.timestamps null: false
    end
  end
end
