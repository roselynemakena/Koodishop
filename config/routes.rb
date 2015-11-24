Rails.application.routes.draw do
  devise_for :users
  get 'shops/index'
  get 'landing/index'
  root 'landing#index'
  resources :koodishop_admins

  resources :shops do
    resources :products
  end

  resources :carts
  get 'dashboard' => 'shop_managers#dashboard', as: 'shop_managers_dashboard'
  get 'products' => 'products#listing', as: "products_listing"
end
