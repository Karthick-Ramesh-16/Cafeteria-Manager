class UsersController < ApplicationController
  def index
    render plain: User.all.map { |user| "#{user.first_name} #{user.last_name} -> #{user.role}" }.join("\n")
  end
end
