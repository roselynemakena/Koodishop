class Shopper < ActiveRecord::Base
  validates :shopper_first_name, presence: true
  validates :shopper_second_name, presence: true
  validates :shopper_email, presence: true,
                                    confirmation: true,
                                       uniqueness: {case_sensitive: false},
                                              format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                                                                      "Invalid email address, please check again"}

  belongs_to :user
  has_one :cart
  has_many :products, through: :cart
  has_one :voucher, through: :cart
end
