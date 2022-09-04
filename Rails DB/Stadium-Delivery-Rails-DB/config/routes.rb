Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth',
  controllers: {
    sessions: 'api/v1/sessions'
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