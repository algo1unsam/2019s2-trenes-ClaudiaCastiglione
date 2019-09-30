import formaciones.*
import locomotoras.*
import vagones.*
import clasesdeVagon.*

class Deposito {
	var property formaciones = [] 
	var property locomotoras = []
	
	method vagonesMasPesados() {
		return formaciones.map({formacion => formacion.vagonMasPesado()}) // TODO acá hay que devolver un conjunto #{}
	}
	
	/*En el metodo para determinar si necesita un conductor experimentado, el deposito delega en sus formaciones determinar si son complejas*/
	method necesitaConductorExperimentado() {
		return formaciones. any({formacion => formacion.esCompleja()})
	}
	
	method hayLocomotoraQueSirvaPara(unaFormacion) {
		return locomotoras.any({locomotora => (locomotora.arrastreUtil()) >= (unaFormacion.kilosEmpujeFaltantes())})
	}
	
	method sonLocomotorasIndicadasPara(unaFormacion) {
		return locomotoras.filter({locomotora => (locomotora.arrastreUtil()) >= (unaFormacion.kilosEmpujeFaltantes())})
	}
	
	method necesitaLocomotoraExtraYExiste(unaFormacion) {
		return (not unaFormacion.puedeMoverse()) && self.hayLocomotoraQueSirvaPara(unaFormacion)
	}
	
	method agregarLocomotoraA(unaFormacion) {
		 if(self.necesitaLocomotoraExtraYExiste(unaFormacion)) {
		 	unaFormacion.locomotoras().add(self.sonLocomotorasIndicadasPara(unaFormacion).first())
		 	locomotoras.remove(self.sonLocomotorasIndicadasPara(unaFormacion).first())
		 }
		 else self.error("Esa formacion no necesita locomotora extra")
	}
	
}
