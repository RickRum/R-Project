Rails.application.routes.draw do
  	devise_for :users
	root "posts#index"
	resources :posts
	namespace :admin do 
		get '/', to: 'homes#index'
		resources :posts
		resources :users
		resources :categories
	end	
end
