Rails.application.routes.draw do
  devise_for :users
  resources :books do
  	resources :reviews
  end
  resources :favorite_books
  root 'books#index'
end
