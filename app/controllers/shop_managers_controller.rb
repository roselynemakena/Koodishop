class ShopManagersController < ApplicationController
	def index
	end
	def new
		@shop_manager = ShopManager.new
	end

	def create
		@shop_manager = ShopManager.new(shop_manager_params)
		if @shop_manager.save
			redirect_to @shop_manager
			flash[:success] = "Shop manager #{@shop_manager.shop_manager_name}'s profile created"
		else
			render :new
			@shop_manager.errors.full_messages.each do |msg|
				flash[:danger] = msg
			end
		end
	end

	def show
		@shop_manager = ShopManager.find(params[:id])
	end

	def edit
		@shop_manager = ShopManager.find(params[:id])
	end

	def destroy
		if ShopManager.find(params[:id]).destroy
			redirect_to shop_managers_path
			flash[:success] = "Deleted"
		else
			flash[:danger] = "Error Deleting Profile"
			@shop_manager.errors.full_messages.each do |msg|
				flash[:danger] = msg
			end
		end
	end

	def update
		@shop_manager = ShopManager.find(params[:id])
		if @shop_manager.save
			redirect_to @shop_manager
			flash[:success] = "#{@shop_manager.shop_manager_name.titlecase}'s profile updated"
		else
			render :edit
			@shop_manager.errors.full_messages.each do |msg|
				flash[:danger] = msg
			end
		end
	end

	private

		def shop_manager_params
			params.require(:shop_manager).permit(
				:shop_manager_name,
				:shop_manager_picture
				)
				
		end
end
