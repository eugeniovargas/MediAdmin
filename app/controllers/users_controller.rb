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

    if params.has_key? :photos
      params[:photos]['photo'].each do |a|
        @photo = @user.photos.create!(photo: a, user_id: @user.id)
      end
    end

    if params[:kv][:key] != '' && params[:kv][:value] != ''
      @user.user_key_value.create!(user_id: @user.id, key: params[:kv][:key], value: params[:kv][:value])
    end

    if @user.update(user_params)
      redirect_to @user, notice: 'Cambios guardados'
    else
      redirect_to @user, notice: 'No se realizaron cambios'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path, notice: 'Usuario borrado'
  end

  def new
  end
  
  def create
    @user = User.new(user_params)
    @user.save

    if @user.valid?
      if params[:kv][:key] != '' && params[:kv][:value] != ''
        @user.user_key_value.create!(user_id: @user.id, key: params[:kv][:key], value: params[:kv][:value])
      end

      if params.has_key? :photos
        params[:photos]['photo'].each do |a|
          @photo = @user.photos.create!(:photo => a, :user_id => @user.id)
        end
      end
      redirect_to @user, notice: 'Usuario creado'
    else
      redirect_to new_user_path, notice: 'Error al crear Usuario, revise los campos obligatorios marcados con un *'
    end
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :apellido, :email, :fecha_nacimiento, :password, :imagen, photo_attributes: [:id, :user_id, :photo])
    end
end
