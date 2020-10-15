class AttractionsController < ApplicationController
  before_action :find_attraction, only: [:show, :edit, :update]
  def index
    @attractions = Attraction.all
    @user = current_user
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(ride_params)
    redirect_to attraction_path(@attraction)
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
    @attraction.update(ride_params)
    redirect_to attraction_path(@attraction)
  end

  def destroy
  end

  private

  def ride_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end

  def find_attraction
    @attraction = Attraction.find(params[:id])
  end
end
