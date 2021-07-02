class MenuCategoriesController < ApplicationController
  def index
    render "index"
  end

  def create
    category = MenuCategory.find_by(name: params[:category])
    unless category.present?
      category = MenuCategory.create!(
        name: params[:category],
        status: true,
      )
    end

    redirect_to create_menu_item_path(
      menu_category_id: category.id,
      name: params[:name],
      description: params[:description],
      price: params[:price],
    )
  end
end
