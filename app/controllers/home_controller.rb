class HomeController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def index
    redirect_to (current_user ? menu_categories_path : new_sessions_path)
  end
end
