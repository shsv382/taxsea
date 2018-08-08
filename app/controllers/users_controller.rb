class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        flash[:success] = "Профиль обновлен!"
        redirect_to @user.own_boat
      else
        flash[:error] = "Введите корректные данные!"
        render 'edit'
      end
  end

  def show
  end

  def destroy
  end

    private
    def user_params
      params.require(:user).permit(:name, :birthdate, :selfinfo, :avatar)
    end
end
