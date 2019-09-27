import depositos.*
import formaciones.*
import vagones.*
import clasesdeVagon.*

class Locomotora {

	var property peso
	var property pesoMaximoPuedeArrastrar
	var property velocidadMaxima

	method arrastreUtil() {
		return pesoMaximoPuedeArrastrar - peso
	}

	method esEficienteLocomotora() {
		return (self.arrastreUtil() >= peso * 5)
	}

}

