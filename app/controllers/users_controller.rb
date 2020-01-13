class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [:new, :create]
  # before_action :check_if_logged_in, only: [ :show, :edit, :update, :destroy ]
  before_action :check_if_admin, only: [:index]


  def new
    @user = User.new
  end

  def create
    # raise 'hell'
    @user = User.create user_params
    if @user.persisted?
      session[:user_id] = @user.id #autologin
      redirect_to user_path( @user.id )
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    check_if_logged_in
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
    redirect_to user_path( @user.id )
  end

  def destroy
    User.destroy params[:id]
    redirect_to login_path
  end

  def account
    check_if_logged_in
    @user = @current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
