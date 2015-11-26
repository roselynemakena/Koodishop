class ProductsController < ApplicationController

  def listing
    @products = Product.all
  end

  def add
    @product = Product.new
    @shop_manager = ShopManager.find_by(current_user.email)
    @shop_id = @shop_manager[:shop_id]
    @shop = Shop.find_by_id(@shop_id)
  end

  def create
  end

  def product_params

  end

end
