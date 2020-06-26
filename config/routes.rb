Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/secret' => 'secrets#show'
  get '/home' => 'sessions#home'
  root 'sessions#home'
  post '/logout' => 'sessions#destroy'
end
