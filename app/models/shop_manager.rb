class ShopManager < ActiveRecord::Base
	validates :shop_manager_name, presence: true
	validates :shop_manager_picture, presence: true
end
