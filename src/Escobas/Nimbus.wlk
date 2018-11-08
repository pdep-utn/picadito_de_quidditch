class Nimbus {

	var property salud
	var property fechaFabricacion
	
	// Punto 1.B

	method velocidad() {
	  return (80 - self.aniosDeAntiguedad()) * (self.salud() / 100)
	}
	
	method aniosDeAntiguedad() {
	  return new Date().year() - self.anioDeFabricacion()
	}
	
	method anioDeFabricacion() {
	  return self.fechaFabricacion().year()
	}
	
}