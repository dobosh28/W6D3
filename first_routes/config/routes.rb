Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :destroy, :index, :show, :update]

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/users', to: 'users#index', as: 'users'
  # get '/users/:id', to: 'users#show', as: 'user'
  # post '/users', to: 'users#create'
  # patch '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # put '/users/:id', to: 'users#update'
  # get '/users/:id/new', to: 'users#new', as: 'new_user'

  resources :artworks, only: [:create, :destroy, :index, :show, :update]
  
  resources :artwork_shares, only: [:create, :destroy]

end
