class AddCartToVoucher < ActiveRecord::Migration
  def change
    add_reference :vouchers, :cart, index: true, foreign_key: true
  end
end
