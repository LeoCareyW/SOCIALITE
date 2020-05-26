Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :places do 
    resources :recommendations 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
