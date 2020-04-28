module LotsHelper
	def form_title
		@lot.new_record? ? "Crear lote" : "Editar lote"
	end
end
