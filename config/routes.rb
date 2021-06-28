Rails.application.routes.draw do
  get "/", to: "home#index"

  get "menu_categories", to: "menu_categories#index"

  get "orders", to: "orders#index"

  get "order_items/:id", to: "order_items#index"
  post "order_items", to: "order_items#create"

  get "cart_items", to: "cart_items#index"
  post "cart_items", to: "cart_items#create"

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
