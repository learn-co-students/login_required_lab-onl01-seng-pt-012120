Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/login' => 'sessions#new'
  get '/welcome' => 'sessions#welcome'
  get '/secrets' => 'secrets#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
