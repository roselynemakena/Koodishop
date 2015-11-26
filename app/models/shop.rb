class Shop < ActiveRecord::Base
  has_one :shop_manager
  has_many :products
end
