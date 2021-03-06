Mealstory::Application.routes.draw do
  resources :users

  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]

  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
 

  match '/about', :to => 'pages#about'
  match '/contact', :to => 'pages#contact'
  match '/help', :to => 'pages#help'

  root :to => 'pages#home'
  resources :users do
    member do
      get :following, :followers
    end
  end
end
