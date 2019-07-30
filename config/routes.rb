Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts do
    resources :comments, only: [:new, :create]
  end
end
