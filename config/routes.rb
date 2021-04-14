Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"
  
  resources :books, only: [:new, :create, :index, :show, :destroy] do
  
  end
  
  resources :users, only: [:show, :edit, :update]
end

