Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :accounts
  resources :suppliers
  # get 'user/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "subject#index"

  resources :subject do
    member do
      get :delete
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "up" => "rails/health#show", as: :rails_health_check

  # get "/user", to: "user#index"
  # get "/user/:id", to: "user#show"

  # Defines the root path route ("/")
  # root "posts#index"
end
