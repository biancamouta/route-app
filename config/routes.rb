Rails.application.routes.draw do
  root to: 'graphs#index'
  get 'optimizations', to: 'optimizations#index'
  resources :edges
  resources :nodes
  resources :optimizations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
