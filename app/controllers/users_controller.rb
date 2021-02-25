class UsersController < ApplicationController
  before_action :require_login, only: [:auto_login]

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { auth_token: token, message: "User authenticated" }
    else
      render json: { data: { message: "Invalid user credentials" } }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
