Rails.application.routes.draw do

  devise_for :users
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :suppliers, only: [:index, :new, :edit, :create, :update]

  resources :categories

  resources :products, only: [:index, :new, :create, :edit, :update]

  resources :cart, only: [:show]

  resources :order_items, only: [:create, :update, :destroy]

  get '/categories/*id' => 'categories#show'
end
