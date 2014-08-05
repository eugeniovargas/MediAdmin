class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
 
    if @user.update(user_params)
      redirect_to @user
    else
      render 'editar'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end

  def new
  end
  
  def create
    @user = User.new(user_params)
 
    @user.save
    redirect_to @user
  end
  
  private
    def user_params
      params.require(:user).permit(:nombre, :apellido, :email, :fecha_nacimiento, :password, :imagen)
    end
end
