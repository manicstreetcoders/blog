Blog::Application.routes.draw do
  
  get "home/index"
	
	root :to => 'home#index'

  resources :posts

  resources :posts do
    resources :comments
  end

  match 'search' => 'posts#search'
  
end
