module Api
  module V1
    class SubmitsController < ApplicationController
      before_action :set_submit, only: %i[ show edit update destroy ]

      # GET /submits or /submits.json
      def index
        @submits = Submit.all
        render json: SubmitSerializer.new(@submits).serialized_json
      end

      # GET /submits/1
      def show
        submits = Question.find_by(id: params[:id])
        render json: SubmitSerializer.new(submits).serialized_json
      end

      # GET /submits/new
      def new
        @submit = Submit.new
      end

      # POST /submits or /submits.json
      def create
        @submit = Submit.new(submit_params)
        if @submit.save
          render json: SubmitSerializer.new(@submit).serialized_json
        else
          render json: { error: @submit.errors.messages }, status: 422
        end
      end

      # PATCH/PUT /submits/1
      def update
        if @submit.update(submit_params)
          render json: SubmitSerializer.new(@submit).serialized_json
        else
          render json: { error: @submit.errors.messages }, status: 422
        end
      end

      # DELETE /submits/1 or /submits/1.json
      def destroy
        @submit = set_submit
        if @submit.destroy
          head :no_content
        else
          render json: { error: @submit.errors.messages }, status: 422
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_submit
        @submit = Submit.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def submit_params
        params.require(:submit).permit(:uid, :marks, :test_id)
      end
    end
  end
end

