Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get'/profile', to: 'pages#profile'



  resources :places do
    resources :plans
    resources :recommendations
  end

  resources :groups


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
