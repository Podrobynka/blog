# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  get 'articles/index'

  get '/' => 'home#index'
  get 'contacts' => 'contacts#new'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'

  resources :articles
  resource :contacts, only: %i[create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
