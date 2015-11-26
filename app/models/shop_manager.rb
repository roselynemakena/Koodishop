class ShopManager < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
  has_many :products, through: :shop

  validates :shop_manager_name, presence: true
  validates :shop_manager_picture, presence: true
end
