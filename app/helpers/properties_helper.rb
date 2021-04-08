module PropertiesHelper
	def form_title_properties
		@property.new_record? ? "Crear propiedad" : "Editar propiedad"
	end
end
