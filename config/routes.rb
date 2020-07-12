Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#new"
  get "/secrets/show", to: "secrets#show"
  post "/sessions/create", to: "sessions#create"
  post "/sessions/destroy", to: "sessions#destroy"
end
