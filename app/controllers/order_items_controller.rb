class OrderItemsController < ApplicationController
  def index
    @order_items = Order.find(params[:order_id]).order_items
    render "index"
  end

  def create
    @current_user.cart_items.each do |item|
      OrderItem.create!(
        order_id: Order.last.id,
        menu_item_id: item.menu_item_id,
        menu_item_name: MenuItem.find(item.menu_item_id).name,
        menu_item_price: MenuItem.find(item.menu_item_id).price,
        quantity: item.quantity,
      )
    end
    @current_user.cart_items.destroy_all

    redirect_to orders_path
  end
end
