import Jugadores.Jugador.*

class Cazador inherits Jugador {
	
	var property fuerza
	var property punteria

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.punteria() * self.fuerza()
	}
	
	// Punto 3

	method jugarContra(unEquipo) {
		if (self.tieneLaQuaffle()) {
			self.intentarMeterGol(unEquipo)
		}
	}
	
	method intentarMeterGol(unEquipo) {
		if (unEquipo.podesBloquearA(self)) {
			unEquipo.bloquearA(self)
		} else {
			self.anotarPuntosYAumentarSkills(10, 5)
		}
	}
	
	// Punto 4.A

	method podesGolpearA(unJugador) {
		return self.lePasaElTrapo(unJugador)
	}
	
	// Punto 4.B 

	method sosBlancoUtil() {
		return self.tieneLaQuaffle()
	}

	// Punto 4.C 

	override method sosGolpeadoPorUnaBludger() {
		super()
		self.perderQuaffle()
	}
	
}