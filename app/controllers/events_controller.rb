class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_trip_creator?, only: [:create]
  before_action :is_event_creator?, only: [:update, :destroy]
  respond_to :html, :js

  def create
    @event = Event.new(event_params)
    @trip = Trip.find(params[:trip_id])
    @event.trip = @trip
    @day = @event.day
    if @event.save
      # flash[:success] = "Votre évènement a été créé"
      # #redirect_to trip_path(@trip)
    else
      flash[:error] = @event.errors.full_messages
      redirect_to trip_path(@trip)
    end
  end

  def update
    @event = Event.find(params[:id])
    params[:new_trip_id] == nil ? @trip = Trip.find(params[:trip_id]) : @trip = Trip.find(params[:new_trip_id])
    @event.trip = @trip
    if @event.update(event_params)
      if params[:new_trip_id] != nil || params[:comment] != nil
        flash[:success] = "Votre évènement a été mis à jour"
        redirect_to trip_path(@trip)
      end
    else
      flash[:error] = @event.errors.full_messages
      redirect_to trip_path(@trip)
    end
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html {redirect_to trip_path(@trip)}
      format.js {}
    end
  end

  def copy
    @trips = current_user.trips
    @original_event = Event.find(params[:id])
    @event = @original_event.dup
    @event.save
    @trip = Trip.find(params[:trip_id])
  end

  private

  def event_params
    if params[:comment] == nil 
      if params[:new_trip_id] == nil
      event_params = { city_name: params[:event][:city_name],
                     name_event: params[:event][:name_event],
                     start_time: new_start_time,
                     end_time: new_end_time}
      else
        event_params = { city_name: params[:city_name],
                     name_event: params[:name_event],
                     start_time: new_start_time,
                     end_time: new_end_time}
      end
    else
      event_params = { comment: params[:comment] }
    end
  end

  def new_start_time
    if params[:new_trip_id] == nil
      day = Time.parse(params[:format])
      st_hour = params[:event]['start_time(4i)'].to_i
      st_min = params[:event]['start_time(5i)'].to_i
      start_time = day.change(hour: st_hour, min: st_min)
    else
      day = Time.parse(params[:format])
      st_hour = params[:start_time]['(4i)'].to_i
      st_min = params[:start_time]['(5i)'].to_i
      start_time = day.change(hour: st_hour, min: st_min)
    end
  end

  def new_end_time
    if params[:new_trip_id] == nil
      day = Time.parse(params[:format])
      et_hour = params[:event]['end_time(4i)'].to_i
      et_min = params[:event]['end_time(5i)'].to_i
      end_time = day.change(hour: et_hour, min: et_min)
    else
      day = Time.parse(params[:format])
      et_hour = params[:end_time]['(4i)'].to_i
      et_min = params[:end_time]['(5i)'].to_i
      end_time = day.change(hour: et_hour, min: et_min)
    end
  end

end
