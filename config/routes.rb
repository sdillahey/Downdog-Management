Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'workouts#show'

  resources :clients

  resources :instructors, except: [:edit, :update]

  resources :workouts, except: [:show, :edit, :update]

  get '/login', to: 'sessions#new'

  get '/classes', to: 'workouts#index'

  get '/about', to: 'pages#show', page: 'about'

  get '/contact', to: 'pages#show', page: 'contact'

  get '/main', to: 'pages#main'

  post '/signups/:workout_id/:client_id', to: 'signups#create', as: :signup

  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]

end
