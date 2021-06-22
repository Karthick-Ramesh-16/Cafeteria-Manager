Rails.application.routes.draw do
  get "menu_categories", to: "menu_categories#index"

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
end
