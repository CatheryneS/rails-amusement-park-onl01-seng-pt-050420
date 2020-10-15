Rails.application.routes.draw do
  root 'welcome#home'

  resources :users, only: [:new, :create, :show]
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/logout', to: 'session#destroy'

  get '/admin', to: 'user_admin#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
