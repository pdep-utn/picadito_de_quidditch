import Jugadores.Jugador.*

class Cazador inherits Jugador {
	
	var property fuerza
	var property punteria

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.punteria() * self.fuerza()
	}
	
}