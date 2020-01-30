Rails.application.routes.draw do
  resources :profiles
  get '/users' => 'admin#users', as: :users
  get '/dashboard' => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties
  get 'public/main'
  root to: 'public#main'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
