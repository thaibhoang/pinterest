Rails.application.routes.draw do
  resources :likes, only: [:create, :destroy]
  resources :follows, only: [:create, :destroy]

  resources :pins do
    resources :notes, except: %i[index show]
    resources :saved_pins, except: %i[index show]
    resources :comments
  end
  
  devise_for :users

  resources :users, only: :show do
    resources :profile
    resources :boards
    resources :_saved, only: :index
    resources :_created, only: :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pins#index"
end
