Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  devise_for :users
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :suppliers, only: [:index, :new, :edit, :create, :update]

  resources :categories

  resources :products, only: [:index, :new, :create, :edit, :update]

  get '/categories/*id' => 'categories#show'
end
