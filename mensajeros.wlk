import destinos.*
object roberto {
    const peso = 90
    var vehiculo = bicicleta

    method peso() = peso + vehiculo.peso()
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
    method cargarCredito() {
        tieneCredito = true//!tieneCredito
    }
    method hablar(){
        tieneCredito = false
    }
}

object bicicleta {
    method peso() = 5
}

object camion {
    var acoplados = 1
    method peso() = acoplados * 500
    method amipliar(){
        acoplados = acoplados + 1
    }
}
