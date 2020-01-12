Rails.application.routes.draw do

  # sessions (login form/form submit/logout) routes:
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users
  resources :things

end
