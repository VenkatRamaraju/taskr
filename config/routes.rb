Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
  	member do
  		put :change
  	end
  end
  
  root 'pages#home'
  resources :tasks
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
