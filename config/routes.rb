Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :cars
  resources :order_cards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
