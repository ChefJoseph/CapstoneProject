Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :products
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth',
  controllers: {
    sessions: 'api/v1/devise_token_auth/sessions'
  }
 
    namespace :api do
      namespace :v1 do
        resources :products
        resources :users
        resources :orders
    
      end
 
  # post "/auth/sign_in", to: "api/v1/users#create"
  # post "/auth/sign_in", to: "api/v1/devise_token_auth/sessions#create"
end
end
