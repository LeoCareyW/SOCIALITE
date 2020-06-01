Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get'/profile', to: 'users#profile', as: :profile

  resources :places do
    resources :plans
    resources :recommendations
    resources :comments, only: [ :new, :create ]
  end
   resources :comments, only: [ :destroy ]

  resources :chatrooms do
    resources :messages, only: :create
  end

  resources :groups
  resources :users

  resources :users
  resources :friendships


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
