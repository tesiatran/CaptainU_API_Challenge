class ApplicationController < ActionController::API
  before_action :require_login

  def authorization_header
    request.headers['Authorization']
    # { Authorization: 'Bearer <token>'}
  end

  def decoded_token
    if authorization_header
      token = authorization_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>'}
      begin
        JWT.decode(token, 'secret string', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

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
