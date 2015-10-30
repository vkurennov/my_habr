Rails.application.routes.draw do
  resources :posts
  resources :comments

  # get 'welcome/index'

  root 'welcome#index'
  # root 'posts#index'
end
