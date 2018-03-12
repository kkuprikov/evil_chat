class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join('frontend')

  helper_method :current_user

  def current_user
    @current_user ||= (session[:username] || cookies[:username])
  end
end
