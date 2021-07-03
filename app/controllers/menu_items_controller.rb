class MenuItemsController < ApplicationController
  def new
  end

  def create
    MenuItem.create!(
      menu_category_id: params[:menu_category_id],
      name: params[:name],
      description: params[:description],
      price: params[:price],
      availability: true,
    )

    redirect_to menu_categories_path
  end

  def update
    item = MenuItem.find(params[:id])
    item.availability = !item.availability
    item.save!
    redirect_to menu_categories_path
  end

  def destroy
    MenuItem.find(params[:id]).destroy
    redirect_to menu_categories_path
  end
end
