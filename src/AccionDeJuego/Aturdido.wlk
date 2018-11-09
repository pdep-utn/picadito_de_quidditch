class Aturdido {
	
	var turnosAturdido = 0
	var estadoAnterior

	// Punto 5

	method queJuegue(unBuscador) {
		turnosAturdido++
		if (turnosAturdido > 1) {
			unBuscador.accionDeJuego(estadoAnterior)
		}
  	}
	
	method esBlancoUtil() {
		return estadoAnterior.esBlancoUtil()
	}
}