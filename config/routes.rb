Rails.application.routes.draw do
  get "mypage" => "users#me"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  
 
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :comments, only: %i[create destroy]
  resources :users, only: %i[new create]
end
