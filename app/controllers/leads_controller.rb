class LeadsController < ApplicationController
	before_action :private_access, except: [:new, :create]
	
	def index
		@leads = Lead.all
	end

	def new
		@properties = Property.where(active: true)
		@i = 0
		@lead = Lead.new
	end

	def create
		@lead = Lead.new(lead_params)
		if @lead.save
			redirect_to properties_pivijay_path, alert: "La información fue enviada con éxito, pronto nos contactaremos"
		else
			redirect_to root_path, properties_pivijay_path, alert: "Ocurrió un error, por favor envia nuevamente el formulario"
		end
	end

	private
		def lead_params
			params.require(:lead).permit(:name_lead, :email_lead, :phonenumber_lead, :message_lead, :property_code_lead)
		end
end
