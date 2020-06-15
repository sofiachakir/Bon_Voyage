class ImagesController < ApplicationController

  def create
    @note = Note.find(params[:note_id])
    @note.image.attach(params[:image])

    redirect_to(trip_event_path(@trip, @event))
   end

end
