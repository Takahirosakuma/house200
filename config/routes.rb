Rails.application.routes.draw do
  root 'static_pages#home'

  get  "/usage",     to: "static_pages#usage"
  get  "/signup",    to: "users#new"
  get  "/login",     to: "sessions#new"
  post "/login",     to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :posts do
    resource :favorites, only: [:create, :destroy]
  end
  get  "/posts",     to: "static_pages#home"
  get  "/search",    to: "posts#search"
  get  "/area",      to: "posts#area"
end
