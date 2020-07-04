# frozen_string_literal: true

class PaitentsController < ApplicationController
  # before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_receptionest!, only: %i[create update]
  before_action :set_paitent, only: %i[show edit update destroy]

  def login; end

  # GET /paitents
  # GET /paitents.json
  def index
    @paitents = Paitent.all
  end

  # GET /paitents/1
  # GET /paitents/1.json
  def show; end

  # GET /paitents/new
  def new
    @paitent = Paitent.new
  end

  # GET /paitents/1/edit
  def edit; end

  # POST /paitents
  # POST /paitents.json
  def create
    @paitent = Paitent.new(paitent_params)

    respond_to do |format|
      if @paitent.save
        format.html { redirect_to @paitent, notice: 'Paitent was successfully created.' }
        format.json { render :show, status: :created, location: @paitent }
      else
        format.html { render :new }
        format.json { render json: @paitent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paitents/1
  # PATCH/PUT /paitents/1.json
  def update
    respond_to do |format|
      if @paitent.update(paitent_params)
        format.html { redirect_to @paitent, notice: 'Paitent was successfully updated.' }
        format.json { render :show, status: :ok, location: @paitent }
      else
        format.html { render :edit }
        format.json { render json: @paitent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paitents/1
  # DELETE /paitents/1.json
  def destroy
    @paitent.destroy
    respond_to do |format|
      format.html { redirect_to paitents_url, notice: 'Paitent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_paitent
    @paitent = Paitent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def paitent_params
    params.require(:paitent).permit(:name, :adress, :National_id, :mobile, :gender, :dob, :serialnumber) # visits_id
  end
end
