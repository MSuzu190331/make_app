Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts
  resources :items, only: [:index]
  resources :brands, only: [:index]
end
