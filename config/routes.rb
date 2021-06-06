Rails.application.routes.draw do
  devise_for :users
	root "posts#index" , as: "home"
	resources :posts
	resources :users
	namespace :admin do 
		get '/', to: 'homes#index'
		resources :photos
		resources :imgalleries
		resources :posts
		resources :users
		resources :categories
	end	
end
