Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  #get 'categories', to: 'categories#index'

  #get 'categories/:id', to: 'categories#show'
  resources :posts, :only => [:index, :show]
  resources :tags, :only => [:index, :show]
  resources :categories, :only => [:index, :show]

  get 'home/index'
  root 'home#index'
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
