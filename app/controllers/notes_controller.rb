class NotesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :is_trip_creator?, only: [:new, :create]
  before_action :is_event_creator?, only: [:edit, :update, :destroy]


  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @event = Event.find(params[:event_id])
    @note.event = @event

    if @note.save
      flash[:success] = "Votre note a été créé"
      redirect_to trip_events_path(@trip)
    else
      flash[:error] = @note.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to trip_events_path(@trip)
  end

  private

  def note_params
    params.require(:note).permit(:title, :image_url, :text)
  end

end
