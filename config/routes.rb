Rails.application.routes.draw do
  
  get 'dogs/index'
  get 'dogs/show'
  get 'dogs/new'
  get 'dogs/edit'
  resources :users
  resources :dogs
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'dogs#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'dogs/index'
  get 'dogs/show'
  get 'dogs/new'
  get 'dogs/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
