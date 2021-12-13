module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[ show edit update destroy ]

      # GET /users or /users.json
      def index
        @users = User.all
        render json: TestSerializer.new(@users).serialized_json
      end

      # GET /users/1 or /users/1.json
      def show
        @users = Test.find_by(id: params[:id])
        render json: TestSerializer.new(@users).serialized_json
      end

      # GET /users/new
      def new
        @user = User.new
      end

      # PATCH/PUT /users/1 or /users/1.json
      def update
        if @user.update(user_params)
          render json: TestSerializer.new(@user).serialized_json
        else
          render json: { error: @user.errors.messages }, status: 422
        end
      end

      # DELETE /users/1 or /users/1.json
      def destroy
        @user = set_submit
        if @test.destroy
          head :no_content
        else
          render json: { error: @user.errors.messages }, status: 422
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:uid, :name, :role, :email, :password_digest)
      end
    end
  end
end
