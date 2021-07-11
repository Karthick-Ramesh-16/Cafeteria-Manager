class SaleReportsController < ApplicationController
  def index
    if @current_user.role == "Owner"
      if params[:from_date].present?
        @orders = Order.where(
          "ordered_at between ? and ?",
          params[:from_date],
          DateTime.parse(params[:to_date]) + 1
        )
      else
        @orders = Order.all
      end
      render "index"
    else
      render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found
    end
  end
end
