Rails.application.routes.draw do

  get 'map' => 'things#map'

  root to: 'users#account'
  # sessions (login form/form submit/logout) routes:
  get '/login'    => 'session#new'
  post '/login'   => 'session#create'
  delete '/login' => 'session#destroy'

  get '/need' => 'things#need'
  get '/need/item' => 'things#needitem'
  get '/need/task' => 'things#needtask'
  get '/offer' => 'things#offer'
  get '/offer/item' => 'things#offeritem'
  get '/offer/task' => 'things#offertask'

  resources :users
  resources :things
  resources :messages

end
