class MenuCategoriesController < ApplicationController
  def index
    @cart_items = @current_user.cart_items
    category_id = params[:menu_category_id]
    if category_id.present?
      @menu_items = MenuCategory.find(category_id).menu_items
    else
      @menu_items = MenuCategory.first.menu_items
    end
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

  def update
    item = MenuCategory.find(params[:id])
    item.status = !item.status
    item.save!
    redirect_to menu_categories_path
  end
end
