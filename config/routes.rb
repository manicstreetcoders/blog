Blog::Application.routes.draw do
  
  get "home/index"
	
  root :to => 'home#index'

  resources :posts

  resources :posts do
    resources :comments
  end

  match 'search' => 'posts#search'
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
end
