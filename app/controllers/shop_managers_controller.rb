class ShopManagersController < ApplicationController

  def dashboard
    @shop_manager = ShopManager.find_by(shop_manager_email: current_user.email)
    @shop = Shop.find_by_id!(@shop_manager[:shop_id])
    @products = Product.all
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
      :shop_manager_email,
      :shop_id
      )
    end
end
