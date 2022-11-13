Rails.application.routes.draw do
  #get 'users/show'
  #get 'users/edit'
  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'

  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about' ,as:'about'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
