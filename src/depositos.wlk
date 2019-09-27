class Deposito {
	var property formaciones = [] 
	var property locomotoras = []
	
	method vagonesMaspesados() {
		return formaciones.map({formacion => formacion.vagonMasPesado()})
	}
	
	method necesitaConductorExperimentado() {
		return formaciones. any({formacion => formacion.esCompleja()})
	}
	
	
}
