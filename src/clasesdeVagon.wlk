class carga {
	var property cargaMaxima
	
	method pesoMaximo() {
		return cargaMaxima + 160
		}
		
	method esLiviano(){
		return (self.pesoMaximo( ) < 2500)
	}
	
	
}

class pasajeros {
	var property largo
	var property anchoUtil
	
	method cantPasajeros() {
		if (anchoUtil < = 2.5 ) return largo * 8
		else return largo * 10
	}
	
	method pesoMaximo() {
		return self.cantpasajeros() * 80
		}
		
	method esLiviano(){
		return (self.pesoMaximo( ) < 2500)
	}
}
