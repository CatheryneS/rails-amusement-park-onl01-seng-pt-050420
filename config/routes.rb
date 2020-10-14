Rails.application.routes.draw do
  root 'welcome#home'

  resources :users, only: [:new, :create, :show]
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
