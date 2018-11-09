import Jugadores.Jugador.*

class Cazador inherits Jugador {
	
	var property fuerza
	var property reflejos

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.reflejos() * self.fuerza()
	}
	
	// Punto 3

	method jugarContra(unEquipo) {
		// No hace nada
	}
	
	// Punto 4.A

	method podesGolpearA(unJugador) {
		return 1.randomUpTo(4) == 3
	}

	// Punto 4.B 

	method sosBlancoUtil() {
		return not self.equipo().tieneLaQuaffle()
	}

}