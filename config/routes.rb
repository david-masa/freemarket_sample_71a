Rails.application.routes.draw do
  root 'top#index'

  resources :posts, only: :index

  resources :newreg, only: :index

  resources :log, only: :index

  resources :items, only: [:index, :new]

  resources :purchase, only: :index

  resources :users, only: :index

  resources :logout, only: :index

  resources :cards, only: [:index, :new]
end