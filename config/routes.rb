Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get'/profile', to: 'users#profile', as: :profile

  resources :places do
    resources :plans
    resources :recommendations

  end

  resources :groups
  resources :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
