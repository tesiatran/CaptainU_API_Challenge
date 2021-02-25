class ApplicationController < ActionController::API
  before_action :require_login

  def encode_token(payload)
    JWT.encode(payload, 'secretString')
  end

  def authorize_header
    request.headers['Authorization'] # { Authorization: 'Bearer <token>'}
  end

  def decoded_token
    if authorize_header
      token = authorize_header.split(' ')[1] # header: { 'Authorization': 'Bearer <token>'}
      begin
        JWT.decode(token, 'secretString', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def user_logged_in
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!user_logged_in
  end

  def require_login
    render json: { message: 'Log in to access' }, status: :unauthorized unless logged_in?
  end
end
