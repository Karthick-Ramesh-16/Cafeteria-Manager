class OrdersController < ApplicationController
  def index
    render plain: Order.first.ordered_at
  end
end
