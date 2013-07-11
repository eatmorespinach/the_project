class ApplicationController < ActionController::Base
  protect_from_forgery




  def ensure_logged_in
  	unless current_user
  		flash[:alert] = "Please log in!"
  		redirect_to new_session_path
  	end
  end
end
