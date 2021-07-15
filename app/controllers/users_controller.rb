class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in, except: :index

  def new
    current_user
    render "users/new"
  end

  def index
    if @current_user.role == "Owner"
      case params[:user]
      when "Customers"
        @users = User.where(role: "Customer")
      when "Clerks"
        @users = User.where(role: "Billing Clerk")
      when "Owners"
        @users = User.where(role: "Owner")
      else
        @users = User.all
      end

      render "index"
    else
      render :file => "#{Rails.root}/public/404.html", layout: false, status: :not_found
    end
  end

  def create
    role = params[:role]
    new_user = User.new(
      first_name: params[:first_name].capitalize,
      last_name: params[:last_name].capitalize,
      email: params[:email],
      password: params[:password],
      role: role.present? ? role : "Customer",
    )

    unless new_user.save
      flash[:error] = new_user.errors.full_messages.join(", ")
      redirect_to new_user_path
    else
      session[:current_user_id] = new_user.id unless role.present?
      redirect_to "/"
    end
  end
end
