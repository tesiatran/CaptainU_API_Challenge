class UsersController < ApplicationController
  before_action :require_login, only: [:auto_login]

  def create
    @user = User.create(login_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {auth_token: token, user: @user}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password]) # 'authenticate' method from bcrypt
      token = encode_token({ user_id: @user.id })
      render json: { auth_token: token, message: "User authenticated" }
    else
      render json: { data: { message: "Invalid user credentials" } }
    end
  end

  def auto_login # Use token from post request to make get request to reverse check data
    render json: @user
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
