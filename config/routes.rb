Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:index, :show]
  resources users, only: [:index, :show]
  get 'homes/about' => 'homes#about', as: 'about'
end
