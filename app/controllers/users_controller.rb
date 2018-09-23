class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      redirect_to root_url, notice: 'Sign up unsuccesful'
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end