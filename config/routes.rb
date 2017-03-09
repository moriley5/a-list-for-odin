AListForOdin::Application.routes.draw do
  get '/' => 'games#index'

  #user
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  #sessions
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'
end
