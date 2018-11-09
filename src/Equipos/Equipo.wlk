class Equipo {

	var jugadores = []

	var property marcador = 0 
	
	// Punto 2.B
	
	method habilidadPromedio() {
		return self.sumatoriaHabilidades() / self.cantidadJugadores()	
	}
	
	method sumatoriaHabilidades() {
		return jugadores.sum { jugador => jugador.habilidad() }
	}
	
	method cantidadJugadores() {
		return jugadores.size()
	}
	
	// Punto 2.C
	
	method tieneJugadorEstrellaContra(otroEquipo) {
		return jugadores.any { jugador => otroEquipo.tePasaElTrapo(jugador) } 
	}
	
	method tePasaElTrapo(unJugador) {
		return jugadores.all { jugador => unJugador.lePasaElTrapo(jugador) }
	}

	// Punto 3
	
	method jugarContra(otroEquipo) {
		return jugadores.forEach { jugador => jugador.jugarContra(otroEquipo) }
	}
	
	method aumentarMarcador(unosPuntos) {
		marcador += unosPuntos
	}
	
	method podesBloquearA(unCazador) {
		return jugadores.any { jugador => jugador.podesBloquearA(unCazador) }
	}
	
	method bloquearA(unCazador) {
		var bloqueador = self.bloqueadorPara(unCazador)
		bloqueador.aumentarSkills(10)
		unCazador.disminuirSkills(2)
		self.recuperarLaQuaffleDe(unCazador)
	}
	
	method bloqueadorPara(unCazador) {
		return jugadores.find { jugador => jugador.podesBloquearA(unCazador) }
	}
	
	method recuperarLaQuaffleDe(unCazador) {
		unCazador.perderQuaffle()
		self.jugadorMasRapido().agarrarQuaffle()
	}
	
	method jugadorMasRapido() {
		return jugadores.max { jugador => jugador.velocidad() }
	}
	
	method blancoUtil() {
		return jugadores.find { jugador => jugador.sosBlancoUtil() }
	}
	
	// Punto 4.B 

	method tieneLaQuaffle() {
		return jugadores.any { jugador => jugador.tieneLaQuaffle() }
	}

}
