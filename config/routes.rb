Rails.application.routes.draw do
  
  resources :blogs
  resources :articles
  # root 'pages#home'
  get "about", to:"pages#about"
  get "signup", to:"users#new"
  get "login",to:"sessions#new"
  post "login",to:"sessions#create"
  get "logout",to:"sessions#destroy"
  # post "users", to:"users#create"
  resources :users, except: [:new]
end
