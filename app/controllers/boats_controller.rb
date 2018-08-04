class BoatsController < ApplicationController
	def index
		@boats = Boat.all
	end

	def show
		@boat = Boat.find(params[:id])
	end

	def update
      @boat = Boat.find(params[:id])
      if @boat.update_attributes(boat_params)
        flash[:success] = "Профиль обновлен!"
        redirect_to @boat
      else
        flash[:error] = "Введите корректные данные!"
        render 'show'
      end
	end

	private
	def boat_params
		params.require(:boat).permit(:name, :capacity, :avatar)
	end
end
