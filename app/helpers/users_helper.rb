module UsersHelper
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
      # @current_user = @current_user || User.find_by_id(session)
    end
  end

  # Returns true if current_user exists, false otherwise
  def logged_in?
    !current_user.nil?
  end
end
