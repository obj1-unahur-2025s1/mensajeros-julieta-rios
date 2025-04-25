import destinos.*
object roberto {
    var vehiculo = bicicleta

    method peso() = 90 + vehiculo.peso()
    method vehiculo() = vehiculo

    method vehiculo(unVehiculo) {vehiculo = unVehiculo}

    method puedeLlamar() = false
}

object chuckNorris {
    method peso() = 80
    method puedeLlamar() = true
}

object neo {
    var tieneCredito = true
    method peso() = 0
    method puedeLlamar() = tieneCredito
    method cambiarCredito() {
        tieneCredito = !tieneCredito
    }

}

object bicicleta {
    method peso() = 5
}

object camion {
    var cantDeAcoplados = 1
    method peso() = cantDeAcoplados * 500
    method cantDeAcoplados(unaCantidad){
        cantDeAcoplados = unaCantidad
    }
}
