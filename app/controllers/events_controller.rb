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
    @day = params[:format]
  end

  def create
    @event = Event.new(event_params)
    @trip = Trip.find(params[:trip_id])
    @event.trip = @trip
    
    if @event.save
      flash[:success] = "Votre évènement a été créé"
      redirect_to trip_path(@trip)
    else
      flash[:error] = @event.errors.full_messages
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @day = params[:format]
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @event = Event.find(params[:id])

    if @event.update(event_params)
      flash[:success] = "Votre évènement a été mis à jour"
      redirect_to trip_path(@trip)
    else
      flash[:error] = @event.errors.full_messages
      render :edit
    end

  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to trip_path(@trip)
  end

  private

  def event_params
    event_params = Hash.new
    event_params = { city_name: params[:city_name],
                     name_event: params[:name_event],
                     start_time: new_start_time,
                     end_time: new_end_time,
                     comment: params[:comment] }
  end

  def new_start_time
    day = Time.parse(params[:format])
    st_hour = params[:start_time]['(4i)'].to_i
    st_min = params[:start_time]['(5i)'].to_i
    start_time = day.change(hour: st_hour, min: st_min)
  end

  def new_end_time
    day = Time.parse(params[:format])
    et_hour = params[:end_time]['(4i)'].to_i
    et_min = params[:end_time]['(5i)'].to_i
    end_time = day.change(hour: et_hour, min: et_min)
  end

end