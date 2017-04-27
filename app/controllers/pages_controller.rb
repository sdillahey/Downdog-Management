class PagesController < ApplicationController
  before_action :admin_check, only: [:main]

def show
  render "/pages/#{params[:page]}"
end

def main
end

end
