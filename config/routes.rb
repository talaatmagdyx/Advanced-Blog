Rails.application.routes.draw do
  
 # pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'
  
 # article Controller
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
