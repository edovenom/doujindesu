class ApplicationController < ActionController::Base
	private

	def current_user
	  if session[:user_id]
	    @current_user ||= User.find_by_id(session[:user_id])
	    # @current_user = @current_user || User.find_by_id(session)
	  end
	end

	def logged_in?
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	helper_method :logged_in?
	helper_method :current_user
end
