class Deposito {
	var property formaciones = [] 
	var property locomotoras = []
	
	method vagonesMaspesados() {
		return formaciones.map({formacion => formacion.vagonMasPesado()})
	}
	
	method necesitaConductorExperimentado() {
		return formaciones. any({formacion => formacion.esCompleja()})
	}
	method hayLocomotoraQueSirva(unaFormacion) {
		return locomotoras.any({locomotora => (locomotora.arrastreUtil() >= unaFormacion.kilosEmpujeFaltantes())})
	}
	method sonLocomotorasIndicadas(unaFormacion) {
		return locomotoras.find({locomotora => locomotora.arrastreUtil() >= unaFormacion.kilosEmpujeFaltantes()})
	}
	method necesitaYExisteLocomotoraExtra(unaFormacion) {
		return (not unaFormacion.puedeMoverse()) && self.hayLocomotoraQueSirva(unaFormacion)
	}
	method agregarLocomotoraA(unaFormacion) {
		 if(self.necesitaYExisteLocomotoraExtra(unaFormacion)) {
		 	unaFormacion.add(self.sonLocomotorasIndicadas(unaFormacion).first())
		 	locomotoras.remove(self.sonLocomotorasIndicadas(unaFormacion).first())
		 }
		 else self.error("Esa formacion no necesita locomotora extra")
	}
	
	
	
}
