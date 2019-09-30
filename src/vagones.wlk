import depositos.*
import locomotoras.*
import formaciones.*
import clasesdeVagon.*

class Vagon {

	var property clase

	method esLiviano() {
		return clase.esLiviano()
	}

	method pesoTotal() {
		return clase.pesoTotal()
	}
	
	method cantPasajeros() {
		return clase.cantPasajeros()  // TODO clase puede ser Pasajero o Carga, y cantPasajeros() no es un mensaje polimórfico!
	}
	
	method pesoMaximo() {
		return clase.pesoMaximo()
	}

}

