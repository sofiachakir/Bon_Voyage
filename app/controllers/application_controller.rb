class ApplicationController < ActionController::Base
	include ApplicationHelper

	def after_sign_in_path_for(resource)
		flash[:notice] = "Veuillez compléter votre profil"
		user_path(current_user) unless current_user.completed_profile?
	end

end
