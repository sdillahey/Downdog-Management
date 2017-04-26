Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clients#index'

  resources :clients

  resources :instructors, except: [:edit, :update]

  resources :workouts, except: [:show, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

  get '/classes', to: 'workouts#index'

  # get '/about', to:

end
