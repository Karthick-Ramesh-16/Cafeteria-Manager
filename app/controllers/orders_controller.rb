class OrdersController < ApplicationController
  def index
    @orders = (@current_user.role == "Customer") ? @current_user.orders : Order.order(delivered_at: :desc)
    render "index"
  end

  def create
    unless @current_user.cart_items.empty?
      address = params[:destination]
      if address == "new_address" and params[:new_address].present?
        address = Destination.create!(
          user_id: @current_user.id,
          destination: params[:new_address],
        ).destination
      end

      if address != "new_address"
        order = Order.create!(
          user_id: @current_user.id,
          ordered_at: DateTime.now,
          total_amount: params[:total_amount],
          destination: address,
        )
        redirect_to create_order_item_path(id: order.id)
      else
        flash[:error] = "New destination is empty"
        redirect_to menu_categories_path
      end
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
