Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/index'
  root to: 'users#index'
  get 'users/new', to: 'users#new'
  get 'users/show'
  get 'users/edit'
  post 'users', to: 'users#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
