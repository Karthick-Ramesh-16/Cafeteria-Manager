class MenuItemsController < ApplicationController
  def index
    render plain: MenuItem.all.map { |mi| "#{mi.name} #{mi.price}" }.join("\n")
  end
end
