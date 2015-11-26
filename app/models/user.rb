class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :shopper, foreign_key: 'shopper_email'
         has_one :shop_manager, foreign_key: 'shop_manager_email'
end
