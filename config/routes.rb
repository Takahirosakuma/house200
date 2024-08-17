Rails.application.routes.draw do
  root "application#hello"
  get "/signup",      to: "users#new"
  get "/users/edit",  to: "users#edit"
  get "/users/show",  to: "users#show"
end
