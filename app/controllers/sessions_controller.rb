class SessionsController < ApplicationController

  def new
  end

  def create
    client = Client.find_by(email: params[:email])
    if client && client.authenticate(params[:password])
      session[:user_id] = client.id
      if current_user && current_user.is_admin
        redirect_to main_path
      else
        redirect_to root_path, notice: "Logged in!"
      end
    else
      flash.now.alert = "Invalid login credentials"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
