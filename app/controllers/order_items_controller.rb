class OrderItemsController < ApplicationController
  def index
    order = Order.find(params[:id])
    if order.id == current_user.id
      @order_items = order.order_items
      render "index"
    else
      redirect_to orders_path
    end
  end

  def create
    menu_item_id = params[:menu_item_id]
    OrderItem.create!(
      order_id: 1,
      menu_item_id: menu_item_id,
      menu_item_name: MenuItem.find(menu_item_id).name,
      menu_item_price: MenuItem.find(menu_item_id).price,
      quantity: 1,
    )
  end
end
