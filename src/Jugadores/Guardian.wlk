import Jugadores.Jugador.*

class Cazador inherits Jugador {
	
	var property fuerza
	var property reflejos

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.reflejos() * self.fuerza()
	}
	
}