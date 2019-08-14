class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    @restaurant.save!

    redirect_to restaurants_path


    # redirect verbeteren met validatie van formulier
  end

  def edit
  end

  def update
    #nog schrijven
  end

  def destroy
    #nog schrijven
  end


  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
