Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get'/profile', to: 'users#profile', as: :profile
  get '/feed', to: 'users#feed', as: :feed

  resources :places do
    resources :plans
    resources :recommendations
    resources :comments, only: [ :new, :create ]
  end
   resources :comments, only: [ :destroy ]

  resources :chatrooms do
    resources :messages, only: :create
    get'/mark_as_read', to: 'chatrooms#mark_as_read'
    resources :chatroom_users, only: :create
  end

  resources :groups do
    resources :posts, only: [ :new, :create ]
  end
    resources :posts, only: [ :destroy ]

  resources :users

  resources :users
  resources :friendships


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
