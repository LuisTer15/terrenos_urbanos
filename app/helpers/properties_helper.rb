module PropertiesHelper
	def form_title
		@property.new_record? ? "Crear propiedad" : "Editar propiedad"
	end
end
