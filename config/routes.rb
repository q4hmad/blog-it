Rails.application.routes.draw do
  root :to => 'pages#home'
  get 'pages/about' => 'pages#about'

  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
