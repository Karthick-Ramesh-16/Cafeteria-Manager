Rails.application.routes.draw do
  get "/", to: "home#index"

  get "menu_categories", to: "menu_categories#index"

  get "cart_items", to: "cart_items#index"

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
