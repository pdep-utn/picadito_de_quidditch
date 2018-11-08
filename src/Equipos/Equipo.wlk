class Equipo {

	var jugadores = []
	
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
	
}
