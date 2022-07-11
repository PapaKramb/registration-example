Rails.application.routes.draw do
  root to: 'home#index'
  get 'sessions/new'
  get 'users/new'

  get :sign_up, to: 'users#new'
  get :login, to: 'sessions#new'
  get :logout, to: 'sessions#destroy'

  resources :users, only: :create
  resources :sessions, only: :create
end
