module ApplicationHelper

	def bootstrap_class_for_flash(type)
	  case type
	    when 'notice' then "alert-info"
	    when 'success' then "alert-success"
	    when 'error' then "alert-danger"
	    when 'alert' then "alert-warning"
	  end
	end

	def is_trip_creator?
		# si le current user est le trip.user il a accès, sinon redirigé
		if params[:id] == nil
			@trip = Trip.find(params[:trip_id])
		else
			@trip = Trip.find(params[:id])
		end
		unless current_user == @trip.user
			flash[:error] = "Seul le créateur du voyage a accès à cette page"
			redirect_to root_path
		end
	end

	def is_event_creator?
		# si le current user est le créateur de l'event il a accès, sinon redirigé
		@event = Event.find(params[:id])
		unless current_user == @event.trip.user
			flash[:error] = "Seul le créateur du voyage a accès à cette page"
			redirect_to root_path
		end
	end

end
