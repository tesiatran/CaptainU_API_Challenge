class UsersController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password]) # 'authenticate' method from bcrypt gem
      token = encode_token({user: @user, token: token})
      render json: { user: @user, token: token }
    else
      render json: { error: "Username or password is incorrect." }
    end
  end

  def user_params
    params.permit(:email, :password)
  end
end
