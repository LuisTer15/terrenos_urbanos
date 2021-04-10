module LotsHelper
	def form_title_lots
		@lot.new_record? ? "Crear lote" : "Editar lote"
	end
end
