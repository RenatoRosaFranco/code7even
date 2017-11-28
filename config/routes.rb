Rails.application.routes.draw do

  namespace :dashboard do
    resources :users
  end
  namespace :dashboard do
    resources :categories
  end
  namespace :dashboard do
    resources :posts
  end
  namespace :dashboard do
    resources :members
  end
  namespace :dashboard do
    resources :partners
  end
  namespace :dashboard do
    resources :services
  end
  namespace :dashboard do
    resources :newsletters
  end
  # Dashboard
  # @implemented
  namespace :dashboard do
    get '/', to: 'home#index'
  end

  # Application'
  # @implented
  root to: 'home#index'
  resource :contact, controller: 'contact', only: [:create]
  resource :newsletter, controller: 'newsletter', only: [:create, :destroy]

  # Authentication
  # @implemented
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
