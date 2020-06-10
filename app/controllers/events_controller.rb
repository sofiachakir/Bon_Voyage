class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :is_trip_creator?, only: [:new, :create]
  before_action :is_event_creator?, only: [:edit, :update, :destroy]

  def index
    @trip = Trip.find(params[:trip_id])
    @events = @trip.events
  end

  def show
    @event = Event.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @trip = Trip.find(params[:trip_id])
    @event.trip = @trip

    if @event.save
      flash[:success] = "Votre évènement a été créé"
      redirect_to trip_events_path(@trip)
    else
      flash[:error] = @event.errors.full_messages
      render :new
    end

  end

  def edit
    @event = Event.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @event = Event.find(params[:id])
    @event.update(event_params)
    flash[:success] = "Votre évènement a été mis à jour"
    redirect_to trip_events_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to trip_events_path(@trip)
  end

  private

  def event_params
    params.require(:event).permit(:city_name, :name_event, :start_time, :end_time, :comment)
  end
end
