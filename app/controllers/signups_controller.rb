class SignupsController < ApplicationController

def create
  Signup.create(workout_id: params[:workout_id], client_id: params[:client_id])
  redirect_to :back
end

end
