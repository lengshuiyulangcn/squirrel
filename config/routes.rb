Squirrel::Engine.routes.draw do
  root "posts#index"
  resources :posts
  resources :comments
  resources :sections
end
