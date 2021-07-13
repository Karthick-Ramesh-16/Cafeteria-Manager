class OrderItemsController < ApplicationController
  def index
    @order_items = Order.find(params[:order_id]).order_items
    render "index"
  end

  def create
    created = true
    @current_user.cart_items.each do |item|
      item = OrderItem.new(
        order_id: Order.last.id,
        menu_item_id: item.menu_item_id,
        menu_item_name: MenuItem.find(item.menu_item_id).name,
        menu_item_price: MenuItem.find(item.menu_item_id).price,
        quantity: item.quantity,
      )

      unless item.save
        created = false
        break
      end
    end

    if created
      @current_user.cart_items.destroy_all
      flash[:success] = "Your order is placed :) check your orders!"
    else
      flash[:error] = "Sorry! something went wrong :("
    end

    redirect_to menu_categories_path
  end
end
