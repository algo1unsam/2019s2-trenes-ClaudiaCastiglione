import depositos.*
import locomotoras.*
import vagones.*
import formaciones.*

class Carga {

	var property cargaMaxima
	var property peso

	method pesoMaximo() {
		return cargaMaxima + 160
	}

	method esLiviano() {
		return (self.pesoMaximo( ) < 2500)
	}

	method pesoTotal() {
		return peso + self.pesoMaximo()
	}

}

class Pasajero {

	var property largo
	var property anchoUtil
	var property peso

	method cantPasajeros() {
		if (anchoUtil <= 2.5) return largo * 8 
		else return largo * 10
	}

	method pesoMaximo() {
		return (self.cantPasajeros() * 80)
	}

	method esLiviano() {
		return (self.pesoMaximo( ) < 2500)
	}

	method pesoTotal() {
		return peso + self.pesoMaximo()
	}

}

