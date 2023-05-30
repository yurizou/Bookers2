Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books
  resources :users, only: [:shoe, :edit]
  resources :books, only: [:new, :create, :edit, :index, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
