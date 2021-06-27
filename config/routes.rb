Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  root "homes#top"
  get 'homes/about'
  devise_for :users
  resources :books, only:[:index,:show,:edit,:create,:update,:destroy,:create]
  resources :users, only:[:index,:show,:edit,:update]
end
