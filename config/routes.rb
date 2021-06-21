Rails.application.routes.draw do
  get "menu_categories", to: "menu_categories#index"
  get "menu_items", to: "menu_items#index"
end
