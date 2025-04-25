import mensajeros.*
import destinos.*

object paquete {
    var pagado = 0

    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }

    method estaPago() = pagado >= 50

    method puedeSerEntregado(unMensajero,unLugar) {
        return unLugar.dejaPasar(unMensajero) && self.estaPago()
    }
}

object paquetito {
    method estaPago() = true
    method puedeSerEntregado(unMensajero,unLugar) {
        return unLugar.dejaPasar(unMensajero)
    }
}

object paquetonViejo {
    var pagado = 0

    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }

    method estaPago() = pagado >= 100

    method puedeSerEntregado(unMensajero,unLugar) {
        return self.estaPago()
    }

}
