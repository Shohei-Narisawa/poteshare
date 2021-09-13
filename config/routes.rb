Rails.application.routes.draw do
  get 'users/index' => 'users/index'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'
  get 'users/profile' => 'users#profile'
  get 'users/account' => 'users/account'
  get 'users/edit' => 'users#edit'
  post 'users/update' => 'users#update'
  get 'users/sign_in' => 'users#sign_in'
  get 'users/login' => 'users#login'
  post 'users/login' => 'users/login'
  
  get 'rooms/index' => 'rooms#index'
  get 'rooms/new' => 'rooms#new'
  post 'rooms/create' => 'rooms#create'
  post 'rooms/:id' => 'rooms#show'
  post 'rooms/:id/destroy' => 'rooms#destroy'
  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rooms
end
