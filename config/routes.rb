Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
   resources :books, only: [:new, :create, :index, :show, :destroy]
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
end
