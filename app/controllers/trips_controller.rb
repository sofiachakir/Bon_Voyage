class TripsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
  	@trips = Trip.all
  end

  def show
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
  		flash[:danger] = @trip.errors.full_messages
  		render :new
  	end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
  	params.require(:trip).permit(:title, :description, :country_name, :start_date, :end_date)
  end

end
