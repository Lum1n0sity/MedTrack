Rails.application.routes.draw do
  get "dashboard/index"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "users/new"
  get "users/create"
  get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "home#index"
  resources :posts

  resources :users, only: [ :new, :create ]
  resources :sessions, only: [ :new, :create, :destroy ]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "signup", to: "users#new"
  delete "logout", to: "sessions#destroy", as: :logout

  # dashboard
  get 'dashboard', to: 'dashboard#index'
end
