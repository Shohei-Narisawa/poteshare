Rails.application.routes.draw do
  get 'rooms/index' => 'rooms#index'
  get 'rooms/new' => 'rooms#new'
  post 'rooms/create' => 'rooms#create'
  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
end
