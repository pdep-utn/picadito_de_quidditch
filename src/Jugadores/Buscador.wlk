import Jugadores.Jugador.*

class Buscador inherits Jugador {
	
	var property reflejos
	var property vision

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.reflejos() * self.vision()
	}
	
}