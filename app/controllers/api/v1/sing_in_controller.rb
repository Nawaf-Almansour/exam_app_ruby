module Api
  module V1
    class SingInController < ApplicationController
      def new
      end

      def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to root_path, notice: "Logged in successfully"
        else
          render json: { error: user.errors.messages }, status: 422
        end
      end

      def destroy
        session[:user_id] = nil
        render json: { messages: "Logged out" }
      end
    end

  end

end
