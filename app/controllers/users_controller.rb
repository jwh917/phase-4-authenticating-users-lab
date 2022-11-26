class UsersController < ApplicationController

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      not_authorized
    end
  end


  private

  def not_authorized
    render json: { error: "Not authorized" }, status: :unauthorized
  end

end


