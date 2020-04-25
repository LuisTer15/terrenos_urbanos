class LotsController < ApplicationController
	def index
		@lots = Lot.all
	end

	def new
		@lot = Lot.new 
	end

	def create
		@lot = Lot.new(lot_params)
		if @lot.save
			redirect_to lots_path, notice: "El lote fue creado con éxito"
		else
			render :new
		end
	end

	def show
		@lot = Lot.find(params[:id])
	end

	def edit
		@lot = Lot.find(params[:id])
	end

	def update
		@lot = Lot.find(params[:id])
		if @lot.update(lot_params)
			redirect_to lots_path, notice: "El lote ha sido actualizaod con éxito"
		else
			render :edit
		end
	end

	def destroy
		lot = Lot.find(params[:id])
		lot.destroy
		redirect_to lots_path, notice: "El lote fue eleminado con éxito"
	end

	private
		def lot_params
			params.require(:lot).permit(:code, :location, :address, :area_land, :area_build, :front_dim, :floors_build, :use_build)
		end
end