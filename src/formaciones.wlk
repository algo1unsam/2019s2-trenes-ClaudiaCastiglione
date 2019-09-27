class Formacion {
	var property locomotoras = []
	var property vagones = []
	
	method totalPasajerosPuedeTransportar() {
		
	}
	method cantVagonesLivianos() {
		return vagones.count({vagon => vagon.esLiviano()})
	}
	method locomotoraMasLenta() {
		return locomotoras.min({locomotora => locomotora.velocidadMaxima()})
	}
	method velocidadMaximalocomotoraMasLenta() { 
		return self.locomotoraMasLenta().velocidadMaxima()
	}
	method esEficiente() {
		
	}
	
	
}
