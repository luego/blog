Blog::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  resources :contacts, only: [:new, :create]

  devise_for :users

  get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'tags/:tag', to: 'posts#index', as: :tag

  # You can have the root of your site routed with "root"
  root 'home#index'

end
