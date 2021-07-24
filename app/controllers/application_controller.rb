class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    def after_sign_in_path_for(users)
      stored_location_for(users) || welcome_path
    end

    def require_password_verification
      unless cookies[:visitor_password_verified]
        return redirect_to "/signups-auth"
      end
    end
end
