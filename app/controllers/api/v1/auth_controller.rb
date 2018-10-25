class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :logout]

  def create
    @user = User.find_by(email: user_login_params[:email])
    if @user && @user.authenticate(user_login_params[:password])
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def logout
    @user = User.find_by(email: user_login_params[:email])
    if @user[:current_user]
      @token = ""
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
