Rails.application.routes.draw do
  devise_for :users
  resources :books do
  	resources :reviews
  end
  resources :favorite_books
  get '/favorites', to: 'favorite_books#index', as: 'favorites'
  root 'books#index'
end
