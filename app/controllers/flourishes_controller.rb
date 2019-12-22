class FlourishesController < ApplicationController
  before_action :set_garden, only: [:new, :create, :show]

  def new
    if @garden !=nil
      @flourish = @garden.flourishes.build
    else
      @flourish = Flourish.new(flourish_params)
    end
  end

  def create
    @flourish = Flourish.new(flourish_params)
    # raise
    @flourish.garden = @garden
    # raise
    @flourish.plant = Plant.find(params["flourish"]["plant"]) unless params["flourish"]["plant"].blank?
    if @flourish.save
      redirect_to garden_url(@garden), notice: 'Plant was successfully created.'
    else
     render :new
     # render 'gardens/show' # to have verifications on the same page
    end
  end

  def edit
    @flourish = Flourish.find(params[:id])
  end

  def destroy
    @flourish = Flourish.find(params[:id])
    if @flourish.destroy
      redirect_to garden_url(@flourish.garden), notice: 'Plant was successfully destroyed.'
    else
      render :new
    end
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def flourish_params
    params.require(:flourish).permit(:description, :plant_id)
  end
end
