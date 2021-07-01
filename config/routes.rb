Rails.application.routes.draw do
  get "/", to: "home#index"

  get "menu_categories", to: "menu_categories#index"

  get "orders", to: "orders#index"
  post "orders/:total_amount", to: "orders#create"

  get "/order_items/:id", to: "order_items#index"
  get "/create_order_item", to: "order_items#create", as: :create_order_item

  get "cart_items", to: "cart_items#index"
  post "cart_items", to: "cart_items#create"
  delete "/clear_cart_items", to: "cart_items#destroy_all", as: :clear_cart
  put "/cart_items/", to: "cart_items#update", as: :change_quantity

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
