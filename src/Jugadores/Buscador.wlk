import Jugadores.Jugador.*
import AccionDeJuego.BuscandoSnitch.*
import AccionDeJuego.PersiguiendoSnitch.*
import AccionDeJuego.Aturdido.*

class Buscador inherits Jugador {
	
	var property vision
	var property accionDeJuego = new BuscandoSnitch()

	// Punto 1.C

	override method habilidadPorPuesto() {
		return self.reflejos() * self.vision()
	}
	
	// Punto 3
	
	method jugarContra(unEquipo) {
		self.accionDeJuego().queJuegue(self)
	}
	
	method perseguirLaSnitch() {
		self.accionDeJuego(new PersiguiendoSnitch())
	}

	method buscarLaSnitch() {
		self.accionDeJuego(new BuscandoSnitch())
	}
	
	method atraparSnitch() {
		self.anotarPuntosYAumentarSkills(150, 10)
	}
	
	// Punto 4.A

	method podesBloquearA(unJugador) {
		return false
	}

	// Punto 4.B 

	method sosBlancoUtil() {
		return self.accionDeJuego().esBlancoUtil()
	}

	// Punto 4.C 

	override method sosGolpeadoPorUnaBludger(unEquipo) {
		super(unEquipo)
		self.buscarLaSnitch()
		
		// Cambio que pide el punto 5
		if (self.esGroso()) self.aturdirse()
	}
	
	// Punto 5

	method aturdirse() {
		self.accionDeJuego(new Aturdido(estadoAnterior = accionDeJuego))	
	}
	
}