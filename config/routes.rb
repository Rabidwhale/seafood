Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes
  get 'bass', to: 'recipes#bass'
  get 'lobster', to: 'recipes#lobster'
end
