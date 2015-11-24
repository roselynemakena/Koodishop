class ShopManagersController < ApplicationController

  def dashboard
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
