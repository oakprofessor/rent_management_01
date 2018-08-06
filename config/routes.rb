Rails.application.routes.draw do
  namespace :admin do
    get "users/account"
    get "/admin/users/account", to: "admin/users#account"
    resources :admin
  end
  get "/order", to: "orders#index"
  post "/newbook", to: "orders#create"
  get "admin/account"
  get "admin/index"
  root "static_pages#home"
  get "home", to: "static_pages#home"
  get  "/room", to: "rooms#index"
  get  "/room/:id", to: "rooms#show"
  get "/bookroom/:id", to: "rooms#bookroom"
  get  "/news", to: "static_pages#news"
  get  "/contact", to: "static_pages#contact"
  get  "/help", to: "static_pages#help"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :orders
end
