# frozen_string_literal: true

class VistsController < ApplicationController
  before_action :set_vist, only: %i[show edit update destroy]

  # GET /vists
  # GET /vists.json
  def index
    @vists = Vist.all
  end

  # GET /vists/1
  # GET /vists/1.json
  def show; end

  # GET /vists/new
  def new
    @vist = Vist.new
  end

  # GET /vists/1/edit
  def edit; end

  # POST /vists
  # POST /vists.json
  def create
    @vist = Vist.new(vist_params)

    respond_to do |format|
      if @vist.save
        format.html { redirect_to @vist, notice: 'Vist was successfully created.' }
        format.json { render :show, status: :created, location: @vist }
      else
        format.html { render :new }
        format.json { render json: @vist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vists/1
  # PATCH/PUT /vists/1.json
  def update
    respond_to do |format|
      if @vist.update(vist_params)
        format.html { redirect_to @vist, notice: 'Vist was successfully updated.' }
        format.json { render :show, status: :ok, location: @vist }
      else
        format.html { render :edit }
        format.json { render json: @vist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vists/1
  # DELETE /vists/1.json
  def destroy
    @vist.destroy
    respond_to do |format|
      format.html { redirect_to vists_url, notice: 'Vist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vist
    @vist = Vist.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vist_params
    params.require(:vist).permit(:p_serial)
  end
end
