class CartsController < ApplicationController

  def add
    @cart = Cart.new
    @shopper = Shopper.find_by(shopper_email: current_user.email)
    @cart.shopper_id = @shopper.shopper_id
    @cart.cart_itemscart_total_price = :product_name
  end
end
