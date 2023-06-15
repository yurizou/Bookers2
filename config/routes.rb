Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => "homes#about" ,as: "about"
  resources :books, only: [:new, :create, :edit, :index, :show, :update, :destroy]
  resources :users, only: [:index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
