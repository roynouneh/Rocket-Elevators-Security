class SignupsController < Devise::RegistrationsController
    before_action :require_password_verification
end