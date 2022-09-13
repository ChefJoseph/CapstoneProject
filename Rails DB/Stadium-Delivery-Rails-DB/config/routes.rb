Rails.application.routes.draw do
  resources :orderproducts
  
 
    namespace :api do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth',
  controllers: {
    sessions: 'api/v1/sessions',
    registrations: 'devise_token_auth/registrations',
    
  }
        resources :products
        resources :users
        resources :orders
    
      end

      # post "/new_orders", to: "api/v1/orders#create"
  # post "/auth/sign_in", to: "api/v1/users#create"
  # post "/auth/sign_in", to: "api/v1/devise_token_auth/sessions#create"
end
root 'pages#home'
end