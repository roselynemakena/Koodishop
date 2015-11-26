class Cart < ActiveRecord::Base
  belongs_to :shopper
  has_many :products
  has_one :voucher
end
