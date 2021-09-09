Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update] do
  get 'followers' => 'relationships#followers', as: 'followers'
  get 'followings' => 'relationships#followings', as: 'followings'
  resource :relationships, only: [:create, :destroy]
  end
  resources :books do
  resources :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  get 'search' => 'posts#search'
end
