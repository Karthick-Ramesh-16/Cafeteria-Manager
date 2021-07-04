class OrdersController < ApplicationController
  def index
    @orders = (@current_user.role == "owner") ? Order.all : @current_user.orders
    render "index"
  end

  def create
    unless @current_user.cart_items.empty?
      order = Order.create!(
        user_id: @current_user.id,
        ordered_at: DateTime.now,
        total_amount: params[:total_amount],
        destination: params[:destination],
      )

      redirect_to create_order_item_path(id: order.id)
    else
      redirect_to menu_categories_path
    end
  end

  def update
    order = Order.find(params[:id])
    order.delivered_at = DateTime.now
    order.save!

    redirect_to orders_path
  end
end
