class SessionsController < ApplicationController

  def new
  end

  def create
    client = Client.find_by(email: params[:email])
    if client && client.authenticate(params[:password])
      session[:client_id] = client.id
      redirect_to root_path, notice: "Logged in!"
    else
      flash.now.alert = "Invalid login credentials"
      render :new
    end
  end

  def destroy
    session[:client_id] = nil
    redirect_to root_path
  end

end
