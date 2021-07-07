Rails.application.routes.draw do
  get "/", to: "home#index"

  resources :menu_categories
  resources :menu_items
  resources :orders
  resources :users

  get "/create_menu_item", to: "menu_items#create", as: :create_menu_item
  get "/get_menu_item", to: "menu_items#get_menu_item", as: :get_menu_item

  get "show_reports", to: "sale_reports#index", as: :show_reports

  get "/order_items", to: "order_items#index"
  get "/create_order_item", to: "order_items#create", as: :create_order_item

  post "/cart_items", to: "cart_items#create"
  delete "/clear_cart_items", to: "cart_items#destroy_all", as: :clear_cart
  put "/cart_items", to: "cart_items#update", as: :change_quantity

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
