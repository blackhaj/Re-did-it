Rails.application.routes.draw do
  get 'commentdownvote/create'

  get 'commentdownvote/destroy'

  get 'commentupvote/create'

  get 'commentupvote/destroy'

  get 'downvote/create'

  get 'downvote/destroy'

  get 'upvote/create'

  get 'upvote/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :posts, only: [:show, :index]
  resources :comments, only: [:show, :index]
  resources :subreddits, only: [:show, :index]
  resources :posts do
    resources :upvotes, only: [:create, :destroy]
    resources :downvotes, only: [:create, :destroy]
  end
  resources :comments do
    resources :commentupvotes, only: [:create, :destroy]
    resources :commentdownvotes, only: [:create, :destroy]
  end

end
