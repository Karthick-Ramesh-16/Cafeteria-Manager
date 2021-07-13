class MenuItemsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    item = MenuItem.new(
      menu_category_id: params[:menu_category_id],
      name: name,
      description: params[:description],
      price: params[:price].to_f,
      availability: true,
    )

    if item.save
      flash[:success] = "Added a new menu item"
    else
      flash[:error] = item.errors.full_messages.join(", ")
    end
    redirect_to menu_categories_path
  end

  def update
    item = MenuItem.find(params[:id])
    item.availability = !item.availability

    if item.save
      flash[:success] = "#{item.name} is now #{item.availability ? nil : "un"}available"
    else
      flash[:error] = item.errors.full_messages.join(", ")
    end
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

    if item.save
      flash[:success] = "Successfully changes were saved"
    else
      flash[:error] = item.errors.full_messages.join(", ")
    end
    redirect_to menu_categories_path
  end

  def destroy
    item = MenuItem.find(params[:id])
    flash[:success] = "#{item.name} is removed"
    item.destroy
    redirect_to menu_categories_path
  end
end
