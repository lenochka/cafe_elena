class UsersController < ApplicationController
  allow_unauthenticated_access
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Bakery Elena #{@user_name}, you have successfully signed up"
      redirect_to products_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email_address, :password)
  end

end