class Api::V1::UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all.select(:nombre, :apellido, :email, :fecha_nacimiento, :created_at, :updated_at)
    render json: @users
  end

  def show
    @user = User.where(id: params[:id]).select(:nombre, :apellido, :email, :fecha_nacimiento, :created_at, :updated_at)
    render json: @user
  end
end