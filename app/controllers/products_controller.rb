class ProductsController < ApplicationController

  def listing
    @products = Product.all
  end

  def new
    @shop_manager = ShopManager.find_by(shop_manager_email: current_user.email)
    @shop = Shop.find_by_id(@shop_manager[:shop_id])
    @product = Product.new(@shop_id)
   end

  def create
  end



  def product_params

  end

end
