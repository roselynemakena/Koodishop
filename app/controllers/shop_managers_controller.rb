class ShopManagersController < ApplicationController
	def dashboard
	end
	def new
		# @shop_manager = ShopManager.new
	end

	def create
	end

	def show
		# @shop_manager = ShopManager.find(params[:id])
	end

	def edit
		# @shop_manager = ShopManager.find(params[:id])
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
