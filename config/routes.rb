Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "pieces#index"
  
  resources :pieces
  resources :users, only: [:show, :edit, :update]

  get '/about' => 'pages#about'
end
