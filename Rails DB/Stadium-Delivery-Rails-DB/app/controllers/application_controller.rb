class ApplicationController < ActionController::API
#   before_action :cors_set_access_control_headers
    before_action :configure_permitted_parameters, if: :devise_controller?
    include DeviseTokenAuth::Concerns::SetUserByToken
    include Devise::Controllers::Helpers

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
    
      def user_signed_in?
        current_user_api.present?
      end
      def authorized
        unless current_user
          render json: { message: 'Not authorized' }, status: 401
        end
      end
    
      def authenticate_with_token!
        render json: { errors: "Not authenticated" },
          status: :unathorized unless user_signed_in_api? 
      end

protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :mobile, :password, :password_confirmation, :avatar_url, :license_image_url, :registration])
    end
#   def cors_set_access_control_headers
#     headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
#     headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
#     headers['Access-Control-Allow-Headers'] = '*, X-Requested-With, X-Prototype-Version, X-CSRF-Token, Content-Type'
#     headers['Access-Control-Max-Age'] = "1728000"
# end
end
