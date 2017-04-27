class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= Client.find_by(id: session[:user_id])
    end
  end

  def admin_check
    redirect_to root_path unless current_user && current_user.is_admin
  end
end
