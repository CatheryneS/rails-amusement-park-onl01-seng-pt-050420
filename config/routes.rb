Rails.application.routes.draw do
  root 'welcome#home'

  resources :users, only: [:new, :create, :show, :update]
  resources :attractions
  get 'rides/create', as: 'ride'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/admin', to: 'user_admin#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
