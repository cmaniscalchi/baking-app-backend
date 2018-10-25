class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  private

  def recipe_params
    require :user, allow :user_name, :email, :password
  end

end
