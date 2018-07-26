Rails.application.routes.draw do
  
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
 # pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'
  
 # article Controller
  resources :articles

 #sessions 
 get 'signup', to: 'users#new'

 get 'login', to: 'sessions#new'
 post'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#destroy'


 resources :categories, except: [:destroy]

 #post 'users', to: 'users#create'

 #users controller
 resources :users, except: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
