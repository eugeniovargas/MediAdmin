class Api::V1::UsersController < ApplicationController
  respond_to :json

  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end