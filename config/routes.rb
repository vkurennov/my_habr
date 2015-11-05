Rails.application.routes.draw do
  resources :posts do
    resources :comments, shallow: true
  end


  # get 'welcome/index'

  root 'welcome#index'
  # root 'posts#index'
end
