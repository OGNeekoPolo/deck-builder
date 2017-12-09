Rails.application.routes.draw do

  get '/login', to: 'users#index', as: :login

  post 'login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: :logout

  resources :users

  get '/decks', to: 'decks#index', as: :decks



  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
