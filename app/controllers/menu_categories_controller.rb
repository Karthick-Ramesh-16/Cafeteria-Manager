class MenuCategoriesController < ApplicationController
  def index
    render plain: MenuCategory.all.map { |mc| mc.name }.join("\n")
  end
end
