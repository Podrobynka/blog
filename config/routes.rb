# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  # перенаправлення на сторінку користувача після авторизації
  get 'persons/profile', as: 'user_root'

  get 'home/index'
  get 'persons/profile'

  get '/' => 'home#index'
  get 'contacts' => 'contacts#new'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'

  resources :articles do
    resources :comments, only: %i[create]
  end

  resource :contacts, only: %i[create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
