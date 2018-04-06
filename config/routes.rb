Rails.application.routes.draw do
  devise_for :users
  resources :books do
  	resources :reviews
  end
  resources :favorite_books, only: [:create, :destroy]
  root 'books#index'
end
