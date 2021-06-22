Rails.application.routes.draw do
  get "menu_categories", to: "menu_categories#index"
  get "/", to: "home#index"

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
