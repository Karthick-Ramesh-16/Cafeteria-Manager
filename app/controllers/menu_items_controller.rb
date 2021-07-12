class MenuItemsController < ApplicationController
  def new
  end

  def create
    MenuItem.create!(
      menu_category_id: params[:menu_category_id],
      name: params[:name],
      description: params[:description],
      price: params[:price].to_f,
      availability: true,
    )

    redirect_to menu_categories_path
  end

  def update
    item = MenuItem.find(params[:id])
    item.availability = !item.availability
    item.save!
    redirect_back(fallback_location: "/")
  end

  def get_menu_item
    @item = MenuItem.find(params[:id])
    render "edit"
  end

  def edit
    menu_category_id = MenuCategory.find_by(name: params[:category]).id
    item = MenuItem.find(params[:id])
    item.menu_category_id = menu_category_id
    item.name = params[:name]
    item.description = params[:description]
    item.price = params[:price].to_f

    item.save!
    redirect_to menu_categories_path
  end

  def destroy
    MenuItem.find(params[:id]).destroy
    redirect_to menu_categories_path
  end
end
