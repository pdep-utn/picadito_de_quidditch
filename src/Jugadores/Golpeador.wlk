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
		const blancoUtil = unEquipo.blancoUtil()
		if(self.podesGolpearA(blancoUtil)) {
			self.aumentarSkills(1)
			blancoUtil.sosGolpeadoPorUnaBludger()
		} 
	}
	
	method podesGolpearA(unJugador) {
		return self.punteria() > unJugador.reflejos() or self.tieneSuerte()
	}
	
	method tieneSuerte() {
		return 1.randomUpTo(11) >= 8
	}

	// Punto 4.A

	method podesBloquearA(unJugador) {
		return self.esGroso()
	}

	// Punto 4.B 

	method sosBlancoUtil() {
		return false
	}

}