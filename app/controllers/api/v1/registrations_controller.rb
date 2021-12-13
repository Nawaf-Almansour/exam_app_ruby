module Api
  module V1
class RegistrationsController < ApplicationController
  protect_from_forgery with: :null_session
  # GET /api/v1/user
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: { messages: "user.messages" }
    else
      render json: { error: user.errors.messages }, status: 422
    end
  end

  private

  def user_params
    render params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
  end
end
