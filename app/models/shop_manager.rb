class ShopManager < ActiveRecord::Base
  belongs_to :shop
  has_one :user, foreign_key: 'email'
  has_many :products, through: :shop

  validates :shop_manager_name, presence: true
  validates :shop_manager_email, presence: true
end
