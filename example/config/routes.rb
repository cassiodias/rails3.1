Example::Application.routes.draw do
  
  resources :projects

  resources :developers, only: %w[show index] #mostrar somente estes métodos
  resources :sessions, only: %w[new create] #mostrar somente estes métodos

  root to: "products#index"
  resources :products, only: %w[show index] #mostrar somente estes métodos
  resources :order_items
  
  get "hello/show"
end
