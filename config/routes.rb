Rails.application.routes.draw do
  get "menu_categories", to: "menu_categories#index"

  resources :users
end
