Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resources :recipes do 
    resources :comments, only: :create
  end
  resources :comments, only: :create
  get 'bass', to: 'recipes#bass'
  get 'lobster', to: 'recipes#lobster'
end
