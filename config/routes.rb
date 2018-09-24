Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'album/index'
  get 'album/new'
  get 'album/edit'
  post 'album/create'
  get 'contact/index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :genres, :only => [:index, :new, :create, :destroy]
  resources :users
  resources :sessions
  root 'album#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

