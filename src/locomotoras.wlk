class Locomotora {
	var property peso
	var property pesoMaximoPuedeArrastrar
	var property velocidadMaxima
	
	method arrastreUtil() {
		return pesoMaximoPuedeArrastrar - peso
	}
	
}
