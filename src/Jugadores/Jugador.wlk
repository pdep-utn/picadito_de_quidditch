class Jugador {
	
	var property peso
	var property skills
	var property escoba
	
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
	
}