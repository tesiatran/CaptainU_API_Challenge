class UsersController < ApplicationController
  before_action :require_login, only: [:auto_login]

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password]) # 'authenticate' method from bcrypt
      token = encode_token({ user_id: @user.id })
      render json: { auth_token: token, message: "User authenticated" }
    else
      render json: { data: { message: "Invalid user credentials" } }
    end
  end

  def auto_login # use token from post request to make get request to reverse check data
    render json: @user
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
