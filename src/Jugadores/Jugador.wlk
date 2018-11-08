import Escobas.mercadoDeEscobas.*

class Jugador {
	
	var property peso
	var property skills
	var property escoba
	var property equipo
	
	// Punto 1.A

	method nivelDeManejoDeEscoba() {
		return self.skills() / self.peso()
	}
	
	// Punto 1.B

	method velocidad() {
	  return self.escoba().velocidad() * self.nivelDeManejoDeEscoba()
	}
	
	// Punto 1.C
	
	method habilidad() {
	  return self.velocidad() + self.skills() + self.habilidadPorPuesto()
	}
	
	method habilidadPorPuesto()
	
	// Punto 2.A
	
	method lePasaElTrapo(otroJugador) {
		return self.habilidad() > otroJugador.habilidad() * 2
	}
	
	// Punto 2.B
	
	method esGroso() {
		return self.esHabilidadGrosa() and mercadoDeEscobas.esVelocidadGrosa(self.velocidad())
	}
	
	method esHabilidadGrosa() {
		return self.habilidad() > self.equipo().habilidadPromedio()
	}
	
}