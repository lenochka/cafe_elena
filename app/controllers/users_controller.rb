class UsersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_user, only: %i[ show edit update ]
  before_action :resume_session, only: :new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      start_new_session_for @user
      flash[:notice] = "Welcome to 'Bakery Elena' #{@user.user_name}, you have successfully signed up"
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account was successfully updated"
      redirect_to products_path
    else
      render 'edit'
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:user_name, :email_address, :password)
  end

end