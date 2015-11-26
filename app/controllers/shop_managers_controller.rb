class ShopManagersController < ApplicationController

  def dashboard
    # @shop = Shop.find_by[:shop_manager_shop]
    # @products = shop.product.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private
    def shop_manager_params
      params.require(:shop_manager).permit(
      :shop_manager_name,
      :shop_manager_picture
      )
    end
end
