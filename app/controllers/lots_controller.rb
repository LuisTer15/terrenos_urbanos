class LotsController < ApplicationController
	before_action :private_access

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
			params.require(:lot).permit(:code, :location, :address, :area_land, :area_build, :front_dim, :floors_build, :use_build, :left_dim, :right_dim, :back_dim, :ref_catastral, :pot_polygon, :pot_treatment, :pot_treatment_level, :pot_tipology, :pot_front_align_lb_lc, :pot_left_align_lb_lc, :pot_right_align_lb_lc, :pot_back_align_lb_lc, :pot_road_name, :base_density, :base_floors, :max_density, :max_floors)
		end
end