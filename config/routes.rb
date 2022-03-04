Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/wallet", to: "wallets#show"

  resources :wallets, only: [:show] do
    resources :assets, only: [:create]
  end

end
