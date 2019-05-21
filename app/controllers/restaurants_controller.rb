class RestaurantsController < ApplicationController
  before_action :set_current_restaurant
  def index
    @restaurants = Restaurant.all
  end

  def show
    set_current_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurants_path(@restaurant)
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_current_restaurant
    if params[:id]
      @restaurant = Restaurant.find(params[:id])
    end
  end
end
