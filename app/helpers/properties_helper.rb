module PropertiesHelper
	def form_title_properties
		@property.new_record? ? "Publicar propiedad" : "Editar propiedad"
	end
end
