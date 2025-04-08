

object sistema {
	method puedeSer_EntregadoPor_A_(paquete, mensajero, destino) {
		if (paquete.estaPago()){
			return(destino.puedeIngresar(mensajero))
		}
		else return(false)
	}
}

object paquete {
	var estaPago = true

	method estaPago(_estaPago) {
		estaPago = _estaPago
	}

	method estaPago() {
	  return (estaPago)
	}
}

object puenteDeBrooklyn {
	const pesoMaximo = 1000

	method puedeIngresar(mensajero) {
		return(pesoMaximo > mensajero.pesoTotal())
		
	}
}

object laMatrix {
	method puedeIngresar(mensajero) {
		return(mensajero.puedeLlamar())
	}
}

object chuckNorris {
	const peso = 900
	const puedeLlamar = true

	method puedeLlamar() {
	  	return(puedeLlamar)
	}

	method pesoTotal() {
		return(peso)
	}
}

object neo {
	const peso = 0
	var puedeLlamar = false

	method puedeLlamar() {
		return(puedeLlamar)
	}

	method puedeLlamar(_puedeLlamar) {
	  	puedeLlamar = _puedeLlamar
	}

	method pesoTotal() {
		return(peso)
	}
}

object lincolnHawk {
	var peso = 85
	var vehiculo = bicicleta
	var puedeLlamar = false
	
	method vehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}

	method pesoTotal() {
	  	return(peso + vehiculo.pesoTotal())
	}

	method puedeLlamar() {
		return(puedeLlamar)
	}
}

object camion {
	const peso = 500
	var cantidadAcoplados = 0

	method cantidadAcoplados(_cantidadAcoplados) {
		cantidadAcoplados = _cantidadAcoplados
	}

	method pesoTotal() {
		return(peso + (cantidadAcoplados*500))
	}
}

object bicicleta {
	const peso = 10

	method pesoTotal() {
		return(peso)
	}
  
}
