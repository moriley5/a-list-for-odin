AListForOdin::Application.routes.draw do
  root 'games#index'

  #user
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'

  #sessions
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'
  get '/sessions' => 'sessions#delete'

  #games
  resources :games
  #ratings
  post '/games/:id/game_ratings' => 'game_ratings#create', as: 'game_ratings'

  #ownerships
  resources :ownerships
end
