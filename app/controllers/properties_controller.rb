class PropertiesController < ApplicationController
	before_action :private_access

	def index
		@properties = Property.all
	end

	def new
		@property = Property.new 
	end

	def create
		@property = Property.new(property_params)
		if @property.save
			redirect_to properties_path, notice: "La propiedad fue creada con éxito"
		else
			render :new
		end
	end

	def show
		@property = Property.find(params[:id])
	end

	def edit
		@property = Property.find(params[:id])
	end

	def update
		@property = Property.find(params[:id])
		if @property.update(property_params)
			redirect_to properties_path, notice: "La propiedad ha sido actualizada con éxito"
		else
			render :edit
		end
	end

	def destroy
		property = Property.find(params[:id])
		property.destroy
		redirect_to properties_path, notice: "La propiedad fue eliminada con éxito"
	end

	private
		def property_params
			params.require(:property).permit(:code, :price, :location, :address, :area_land, :area_build, :room_count, :bathroom_count, :property_type, :stratus, :description)
		end
end
