class SessionController < ApplicationController
  def new
  end

  def create
    #check user exists
    user = User.find_by email: params[:email]

    #if the user is present and the password matched, log them in
    if user.present? && user.authenticate( params[:password] )
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    #otherwise send them back to login form while showing error
    else
      flash[:error] = 'Invalid username/password'
      redirect_to login_path
    end
  end

  def destroy
    #creates our logout button
    session[:user_id] = nil # this logs out the user
    redirect_to login_path
  end
end
