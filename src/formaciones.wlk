import depositos.*
import locomotoras.*
import vagones.*
import clasesdeVagon.*

class Formacion {

	var property locomotoras = []
	var property vagones = []

	method totalPasajerosPuedeTransportar() {
		return vagones.sum({vagon => vagon.cantPasajeros()})
	}

	method cantVagonesLivianos() {
		return vagones.count({ vagon => vagon.esLiviano() })
	}

	method locomotoraMasLenta() {
		return locomotoras.min({ locomotora => locomotora.velocidadMaxima() })
	}

	method velocidadMaxima() {
		return self.locomotoraMasLenta().velocidadMaxima()
	}

	method esEficiente() {
		return locomotoras.all({ locomotora => locomotora.esEficienteLocomotora() })
	}

	method arrastreUtilTotal() {
		return locomotoras.sum({ locomotora => locomotora.arrastreUtil() })
	}

	method pesoMaxTotalDeSusVagones() {
		return vagones.sum({ vagon => vagon.pesoMaximo() })
	}

	method puedeMoverse() {
		return (self.arrastreUtilTotal() >= self.pesoMaxTotalDeSusVagones())
	}

	method kilosEmpujeFaltantes() {
		if (self.puedeMoverse()) return 0 else return (self.pesoMaxTotalDeSusVagones() - self.arrastreUtilTotal())
	}

	method vagonMasPesado() {
		return vagones.max({ vagon => vagon.pesoTotal() })
	}

	method cantLocomotoras() {
		return locomotoras.size()
	}

	method cantVagones() {
		return vagones.size()
	}

	method cantUnidades() {
		return self.cantVagones() + self.cantLocomotoras()
	}

	method pesoTotalSusLocomotoras() {
		return locomotoras.sum({ locomotora => locomotora.peso() })
	}

	method pesoTotalFormacion() {
		return self.pesoMaxTotalDeSusVagones() + self.pesoTotalSusLocomotoras()
	}

	method esCompleja() {
		return (self.cantUnidades() > 20) || (self.pesoTotalFormacion() > 10000)
	}

}

