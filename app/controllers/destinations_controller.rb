class DestinationsController < ApplicationController
  def create
    Destination.create!(
      user_id: @current_user.id,
      destination: params[:destination],
    )
    redirect_to users_path
  end
end
