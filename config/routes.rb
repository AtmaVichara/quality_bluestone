Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#new"

  get '/login', to: 'sessions#create', as: 'login'
  put '/login', to: 'sessions#create'
end
