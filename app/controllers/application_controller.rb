class ApplicationController < ActionController::API
  before_action :require_login

  def logged_in?
    !!user_logged_in
  end

  def require_login
    render json: { message: 'Please log in to access this feature.' }, status: :unauthorized unless logged_in?
  end
end
