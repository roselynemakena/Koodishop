class ShopManagerController < ApplicationController
	def new
		@shop_manager = ShopManager.new
	end
	def create
		@shop_manager = ShopManager.new(shop_manager_params)
	end
	def show
	end
	def delete
	end
	def shop_manager_params
		
	end
end
