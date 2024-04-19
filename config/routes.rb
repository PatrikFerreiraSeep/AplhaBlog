Rails.application.routes.draw do
  root 'pages#home'
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check

  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # just with the get method did it work
  get 'logout', to: 'sessions#destroy'

end
