class OrderItemsController < ApplicationController
  def index
    render plain: OrderItem.first.menu_item_name
  end
end
