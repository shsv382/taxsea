class MarinersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
    @mariner = Mariner.find(params[:id])
  end

  def update
    @mariner = Mariner.find(params[:id])
      if @mariner.update_attributes(mariner_params)
        flash[:success] = "Профиль обновлен!"
        redirect_to @mariner.boat
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
    def mariner_params
      params.require(:mariner).permit(:name, :birthdate, :selfinfo, :avatar)
    end
end
