class PasswordsController < ApplicationController
  def new
    # Nothing needed here because all your #new view needs is a password field
    render 'signups-auth'
  end

  def create
    unless params[:password].present?
      return redirect_back(fallback_location: 'signups-auth', alert: 'Password is required for sign up.')
    end

    if params[:password] == Rails.configuration.visitor_password
      cookies[:visitor_password_verified] = true
      redirect_to('/users/sign_up', notice: 'You may now sign up.')
    else
      cookies.delete(:visitor_password_verified)
      redirect_back(fallback_location: 'signups-auth', alert: 'You have entered the wrong password.')
    end
  end
end