object mercadoDeEscobas {
	
	var property velocidadDeMercado = 100
	
	method esVelocidadGrosa(unaVelocidad) {
		return unaVelocidad > self.velocidadDeMercado()
	}	
}
