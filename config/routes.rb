Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:new, :index, :show, :create]
  resources :posts, only: [:show, :edit, :update]
  post "/posts/:id", to: "posts#update"
end
