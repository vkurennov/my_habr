Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments, shallow: true
  end


  resources :categories


  # get 'welcome/index'

  root 'welcome#index'
  # root 'posts#index'
end
