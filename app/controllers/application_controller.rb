class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  helper_method :current_client

  def current_client
    if session[:client_id]
      @current_client ||= Client.find_by(id: session[:client_id])
    end
  end
end
