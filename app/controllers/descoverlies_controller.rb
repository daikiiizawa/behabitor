# frozen_string_literal: true
class DescoverliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_descoverly, only: [:show, :edit, :update, :destroy]

  # GET /descoverlies
  # GET /descoverlies.json
  def index
    @descoverlies = Descoverly.all
  end

  # GET /descoverlies/1
  # GET /descoverlies/1.json
  def show
  end

  # GET /descoverlies/new
  def new
    @descoverly = Descoverly.new
  end

  # GET /descoverlies/1/edit
  def edit
  end

  # POST /descoverlies
  # POST /descoverlies.json
  def create
    @descoverly = Descoverly.new(descoverly_params)

    respond_to do |format|
      if @descoverly.save
        format.html { redirect_to @descoverly, notice: 'Descoverly was successfully created.' }
        format.json { render :show, status: :created, location: @descoverly }
      else
        format.html { render :new }
        format.json { render json: @descoverly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descoverlies/1
  # PATCH/PUT /descoverlies/1.json
  def update
    respond_to do |format|
      if @descoverly.update(descoverly_params)
        format.html { redirect_to @descoverly, notice: 'Descoverly was successfully updated.' }
        format.json { render :show, status: :ok, location: @descoverly }
      else
        format.html { render :edit }
        format.json { render json: @descoverly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descoverlies/1
  # DELETE /descoverlies/1.json
  def destroy
    @descoverly.destroy
    respond_to do |format|
      format.html { redirect_to descoverlies_url, notice: 'Descoverly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_descoverly
    @descoverly = Descoverly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def descoverly_params
    params.require(:descoverly).permit(:descovery_time, :type, :description)
  end
end
