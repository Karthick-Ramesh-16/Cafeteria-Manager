class CartItemsController < ApplicationController
  def create
    menu_item_id = params[:menu_item_id]
    items = @current_user.cart_items
    unless CartItem.find_by(user_id: @current_user.id, menu_item_id: menu_item_id).present?
      CartItem.create!(
        user_id: current_user.id,
        menu_item_id: menu_item_id,
        quantity: 1,
      )
    end
    redirect_back(fallback_location: "/")
  end

  def update
    item = CartItem.find(params[:id])
    quantity = params[:quantity].to_i
    item.quantity += quantity

    if item.quantity == 0
      CartItem.destroy(params[:id])
    else
      item.save!
    end

    redirect_back(fallback_location: "/")
  end

  def destroy_all
    @current_user.cart_items.destroy_all
    redirect_back(fallback_location: "/")
  end
end
