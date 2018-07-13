Rails.application.routes.draw do

  root to: 'home#index'

  resources :reviews
  resources :book_shelves do
    resources :books
  end
end
