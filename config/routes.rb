Rails.application.routes.draw do
  root 'top#index'
  root "purchase#index"
  root to: 'posts#index'
end
