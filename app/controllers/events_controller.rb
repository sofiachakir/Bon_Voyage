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
    # params[:format] = Date.parse(@day.to_s)
    # params[:format] = params[:format].to_time
    puts "="*60
    puts params
  end

  def create
    # @event = Event.new(event_params)
    # @p = params[:start_time]
    @day = params[:format].to_time
    # params[:format] = Date.parse(@day.to_s)
    st = params[:start_time].to_time
    et = params[:end_time].to_time
    puts "="*60
    puts "="*60
    puts st
    puts st.class
    puts "="*60
    puts et
    puts et.class
    puts "="*60
    puts @day
    puts @day.class
    # params[:start_time] = DateTime.parse(params[:start_time] + @day)
    # params[:end_time] = DateTime.parse(params[:end_time] + @day)
    # u = params[:start_time].to_time
    # st = u.hour + params[:format].to_time.hour
    # @event = Event.new(city_name: params[:city_name],
    #                     name_event: params[:name_event],
    #                     start_time: params[:start_time],
    #                     end_time: params[:end_time],
    #                     comment: params[:comment],)
    # @trip = Trip.find(params[:trip_id])
    # @event.trip = @trip
    # puts "="*60
    # puts event_params
    # puts params

    # if @event.save
    #   flash[:success] = "Votre évènement a été créé"
    #   redirect_to trip_events_path(@trip)
    # else
    #   flash[:error] = @event.errors.full_messages
    #   render :new
    # end

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
    params.permit(:city_name, :name_event, :start_time, :end_time, :comment)
  end
end
