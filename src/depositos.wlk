import formaciones.*
import locomotoras.*
import vagones.*
import clasesdeVagon.*

class Deposito {
	var property formaciones = [] 
	var property locomotoras = []
	
	method vagonesMasPesados() {
		return formaciones.map({formacion => formacion.vagonMasPesado()})
	}
	
	/*En el metodo para determinar si necesita un conductor experimentado, el deposito delega en sus formaciones determinar si son complejas*/
	method necesitaConductorExperimentado() {
		return formaciones. any({formacion => formacion.esCompleja()})
	}
	
	method hayLocomotoraQueSirva(unaFormacion) {
		return locomotoras.any({locomotora => locomotora.arrastreUtil() >= unaFormacion.kilosEmpujeFaltantes()})
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
