Rails.application.routes.draw do
<<<<<<< HEAD
  root "static_pages#home"
=======
  namespace :admin do
    get "orders/admin_order"
    get "orders/owner_order"
    get "homes/room/:id", to: "homes#room"
    get "homes/new_room/:id", to: "homes#new_room"
    resources :homes
    post "homes/create_room",  to: "homes#create_room"


    resources :users
    resources :orders
  end
>>>>>>> ba3f0004ccb9a137b7b5e496f73126c78c9225fc
  get "/order", to: "orders#index"
  get  "/room/:id", to: "rooms#show"
  post "/newbook", to: "orders#create"
  get "admin/account"
  get "admin/index"
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
  namespace :admin do
    get 'orders/admin_order'
    get 'orders/owner_order'
    get 'homes/room/:id', to: "homes#room"
    get "homes/new_room/:id", to: "homes#new_room"
    resources :homes
    post "homes/create_room",  to: "homes#create_room"


    resources :users
    resources :orders
  end
end
