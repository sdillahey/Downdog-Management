class ClientsController < ApplicationController
  before_action :admin_check, except: [:new, :create]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      session[:user_id] = @client.id
      flash[:notice] = "Thanks for joining!"
      redirect_to clients_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :mobile_number, :password, :password_confirmation)
  end
end
