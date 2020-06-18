class PicturesController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @trip.picture.attach(params[:picture])

    redirect_to(trip_path(@trip))
  end
end
