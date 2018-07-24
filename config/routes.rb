Rails.application.routes.draw do
  
 # pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'
  
 # article Controller
  resources :articles

 #sessions 
 get 'signup', to: 'users#new'
 #post 'users', to: 'users#create'

 #users controller
 resources :users, except: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
