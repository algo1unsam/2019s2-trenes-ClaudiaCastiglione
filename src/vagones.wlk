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

}

