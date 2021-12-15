module Api
  module V1
    class QuestionsController < ApplicationController
      before_action :set_question, only: %i[show update destroy ]
      # protect_from_forgery with: :null_session

      # GET /questions
      def index
        @questions = Question.all
        render json: QuestionsSerializer.new(@questions).serialized_json
        end

      # GET /questions/1
      def show
        question = Question.find_by(id: params[:id])
        render json: QuestionsSerializer.new(question).serialized_json
      end

      # GET /questions/new
      def new
        @question = Question.new
      end

      # POST /questions or /questions.json
      def create
        @question = Question.new(question_params)
        if @question.save
          render json: QuestionsSerializer.new(@question).serialized_json
        else
          render json: { error: @question.errors.messages }, status: 422

        end
      end

      # PATCH/PUT /questions/1 or /questions/1.json
      def update
        if @question.update(question_params)
          render json: { messages: "user.messages" }
          render json: QuestionsSerializer.new(@question).serialized_json

        else
          render json: { error: @question.errors.messages }, status: 422
        end
      end

      # DELETE /questions/1 or /questions/1.json
      def destroy
        question = set_question
        if question.destroy
          head :no_content
        else
          render json: { error: question.errors.messages }, status: 422
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_question
        @question = Question.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def question_params
        params.require(:question).permit(:test_id, :uid, :name, :description, :answer ,option: [])
      end
    end
  end
end
