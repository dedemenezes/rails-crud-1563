class RestaurantsController < ApplicationController

  # Callbacks
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # BEFORE ACTION RUNS ON THE FIRST LINE
    # raise
    # find the right restaurant
  end

  def new
    # we create an empty instance to be used in the form
    @restaurant = Restaurant.new
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # CREATE DOESN'T HAVE A VIEW!
    redirect_to restaurants_path #=> '/restaurants'
  end

  def edit
    # BEFORE ACTION RUNS ON THE FIRST LINE

    # we create an empty instance to be used in the form
    # find the right instance
    # raise
  end

  def update
    # BEFORE ACTION RUNS ON THE FIRST LINE
    # raise
    # 1. find the right restaurant
    # 2. update the restaurant information
    @restaurant.update(restaurant_params)
    # redirect to any other page
    redirect_to restaurant_path(@restaurant) #=> '/restaurants/#{@restaurant.id}'
  end

  def destroy
    # BEFORE ACTION RUNS ON THE FIRST LINE
    # 1. Find the specific/right restaurant
    # 2. destroy the restaurant
    @restaurant.destroy
    # 3 .redirect to any other page
    redirect_to restaurants_path, status: :see_other
  end

  private

  ## STRONG PARAMS!!!! MANDATORY!
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
