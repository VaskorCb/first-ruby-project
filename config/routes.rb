Rails.application.routes.draw do
  resources :users
  resources :blogs
  resources :articles
  root 'pages#home'
  get "about", to:"pages#about"
end
