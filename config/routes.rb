Rails.application.routes.draw do
  devise_for :users
	root "posts#index" , as: "home"
	resources :posts
	resources :profiles
	namespace :admin do 
		get '/', to: 'homes#index'
		resources :posts
		resources :users
		resources :categories
	end	
end
