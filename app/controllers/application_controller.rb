class ApplicationController < ActionController::API
  before_action :require_login

  def user_logged_in
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.findby(id: user_id)
  end

  def logged_in?
    !!user_logged_in
  end

  def require_login
    render json: { message: 'Please log in to access this feature.' }, status: :unauthorized unless logged_in?
  end
end
