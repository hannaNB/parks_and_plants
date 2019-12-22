class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    # search bar
    if params[:query].present?
      @query = params[:query].capitalize
      @gardens = Garden.where("name LIKE ?", "%#{@query}%")
    else
      @gardens = Garden.all.order(:name)
    end
  end
  def show
  end
  def new
    @garden = Garden.new
  end
  def edit
  end
  def create
    @garden = Garden.new(garden_params)

    respond_to do |format|
      if @garden.save
        format.html { redirect_to @garden, notice: 'garden was successfully created.' }
        format.json { render :show, status: :created, location: @garden }
      else
        format.html { render :new }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @garden.update(garden_params)
        format.html { redirect_to @garden, notice: 'garden was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden }
      else
        format.html { render :edit }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    raise
    @garden.destroy
    respond_to do |format|
      format.html { redirect_to gardens_url, notice: 'garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Only allow white paramater
    def garden_params
      params.require(:garden).permit(:name, :banner_url)
    end
end
