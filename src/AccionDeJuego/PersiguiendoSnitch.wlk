class PersiguiendoSnitch {
	
	var kilometrosRecorridos = 0

	// Punto 3

	method queJuegue(unBuscador) {
		self.recorrer(unBuscador.velocidad() * 1.6)
		self.intentarAtraparSnitch(unBuscador)
  	}
	
	method recorrer(unosKilometros) {
		kilometrosRecorridos += unosKilometros
	}
	
	method intentarAtraparSnitch(unBuscador) {
		if (kilometrosRecorridos >= 5000) {
			unBuscador.atraparSnitch()
		}
  	}
			
	// Punto 4.B
	
	method esBlancoUtil() {
		return 5000 - kilometrosRecorridos < 1000
	}

}