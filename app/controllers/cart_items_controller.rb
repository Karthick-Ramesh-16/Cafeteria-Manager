class CartItemsController < ApplicationController
  def index
    @cart_items = current_user.cart_items
    render "index"
  end

  def create
    CartItem.create!(
      user_id: current_user.id,
      menu_item_id: params[:menu_item_id],
      quantity: 1,
    )
    redirect_to cart_items_path
  end
end
