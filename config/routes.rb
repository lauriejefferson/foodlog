Rails.application.routes.draw do
  devise_for :users
  resources :categories
  get 'archives/index'
  resources :entries
  root to: 'entries#index'
end
