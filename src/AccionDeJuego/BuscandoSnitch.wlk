class BuscandoSnitch {
	
	var cantidadTurnosBuscando = 0

	// Punto 3

	method queJuegue(unBuscador) {
		if (self.numeroRandom() < self.condicionParaEncontrarLaSnitch(unBuscador)) {
			unBuscador.perseguirLaSnitch()
		} else {
			cantidadTurnosBuscando++
		}
	}
	
	method numeroRandom() {
		return 1.randomUpTo(1001) // randomUpTo no incluye el límite superior
	}
	
	method condicionParaEncontrarLaSnitch(unBuscador) {
		return unBuscador.habilidad() + cantidadTurnosBuscando
	}
			
	// Punto 4.B
	
	method esBlancoUtil() {
		return true
	}

}