module Api
  module V1
    class TestsController < ApplicationController
      before_action :set_test, only: %i[ show edit update destroy ]

      # GET /tests or /tests.json
      def index
        @tests = Test.all
        render json: TestSerializer.new(@tests).serialized_json
      end

      # GET /tests/1 or /tests/1.json
      def show
        test = Test.find_by(id: params[:id])
        render json: TestSerializer.new(test).serialized_json
      end

      # GET /tests/new
      def new
        @test = Test.new
      end

      # GET /tests/1/edit
      def edit
      end

      # POST /tests or /tests.json
      def create
        @test = Test.new(test_params)
        if @test.save
          render json: TestSerializer.new(@test).serialized_json
        else
          render json: { error: @test.errors.messages }, status: 422
        end
      end

      # PATCH/PUT /tests/1 or /tests/1.json
      def update
        if @test.update(test_params)
          render json: TestSerializer.new(@test).serialized_json
        else
          render json: { error: @test.errors.messages }, status: 422
        end
      end

      # DELETE /tests/1 or /tests/1.json
      def destroy
        @test = set_submit
        if @test.destroy
          head :no_content
        else
          render json: { error: @test.errors.messages }, status: 422
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_test
        @test = Test.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def test_params
        params.require(:test).permit(:uid, :name, :description)
      end
    end
  end
end