Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    get :unpublished, on: :collection
    resources :comments, shallow: true
  end
  resources :categories, only: [:show]

  namespace :admin do
    resources :categories
  end

  # get 'welcome/index'

  root 'welcome#index'
  # root 'posts#index'
end
