module Api
  module V1
class SubmitsController < ApplicationController
  before_action :set_submit, only: %i[ show edit update destroy ]

  # GET /submits or /submits.json
  def index
    @submits = Submit.all
  end

  # GET /submits/1 or /submits/1.json
  def show
  end

  # GET /submits/new
  def new
    @submit = Submit.new
  end

  # GET /submits/1/edit
  def edit
  end

  # POST /submits or /submits.json
  def create
    @submit = Submit.new(submit_params)

    respond_to do |format|
      if @submit.save
        format.html { redirect_to @submit, notice: "Submit was successfully created." }
        format.json { render :show, status: :created, location: @submit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submits/1 or /submits/1.json
  def update
    respond_to do |format|
      if @submit.update(submit_params)
        format.html { redirect_to @submit, notice: "Submit was successfully updated." }
        format.json { render :show, status: :ok, location: @submit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submits/1 or /submits/1.json
  def destroy
    @submit.destroy
    respond_to do |format|
      format.html { redirect_to submits_url, notice: "Submit was successfully destroyed." }
      format.json { head :no_content }
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