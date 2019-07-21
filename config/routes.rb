Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resources :recipes
  get 'bass', to: 'recipes#bass'
  get 'lobster', to: 'recipes#lobster'
end
