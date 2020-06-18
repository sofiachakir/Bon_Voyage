class ApplicationController < ActionController::Base
	include ApplicationHelper

  def after_sign_in_path_for(resource)
    unless current_user.completed_profile?
    flash[:notice] = "Veuillez compléter votre profil" user_path(current_user)
  end

end
