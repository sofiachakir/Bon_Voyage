class TripsController < ApplicationController
	before_action :authenticate_user!, except: [:index]
  before_action :is_trip_creator?, only: [:edit, :update, :destroy]
  
  def index
  	@trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
  	@trip = Trip.new
  end

  def create
  	@trip = Trip.new(trip_params)
  	@trip.user = current_user

  	if @trip.save
  		flash[:success] = "Votre voyage a été créé"
  		redirect_to @trip
  	else
  		flash[:error] = @trip.errors.full_messages
  		render :new
  	end

  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    flash[:success] = "Votre voyage a été mis à jour"
    redirect_to @trip
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to root_path
  end

  private

  def trip_params
  	params.require(:trip).permit(:title, :description, :country_name, :start_date, :end_date)
  end

end
