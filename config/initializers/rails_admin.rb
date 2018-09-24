RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    else
      nil
    end
  end

  config.authorize_with do
    if current_user != nil
      current_user.permission_level == "admin"
    else
      redirect_to main_app.root_path, notice: 'Please login as admin to continue'
    end
  end
end
