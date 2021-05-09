Rails.application.routes.draw do
  get 'chats/show'
  get 'relationships/create'
  get 'relationships/destroy'
  
  devise_for :users, controllers: {
  registrations: "users/registrations"
}

  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  
  
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
    
  end
  
  get 'search' => 'searchs#search'
  
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end

