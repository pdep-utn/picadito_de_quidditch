import Jugadores.Jugador.*

class Golpeador inherits Jugador {
	
	var property fuerza
	var property punteria

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.punteria() * self.fuerza()
	}

	// Punto 3
	
	method jugarContra(unEquipo) {
		unEquipo.blancoUtil().sosGolpeadoPorUnaBludger()
	}

	// Punto 4.A

	method podesGolpearA(unJugador) {
		return self.esGroso()
	}

	// Punto 4.B 

	method sosBlancoUtil() {
		return false
	}

}