import mensajeros.*
import destinos.*

object paquete {
    var destino = matrix
    var pagado = true

    method estaPago() = pagado

    method precio() = 50
    
    method destino(nuevo){
        destino = nuevo
    }

    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }


    method puedeSerEntregado(unMensajero) {
        return self.estaPago() && destino.dejaPasar(unMensajero)
    }
}

object paquetito {
    method estaPago() = true
    method puedeSerEntregado(unMensajero) = true
    method precio() = 0
}

object paqueton {
    const destinos = [puenteDeBrooklyn, matrix]
    var pagado = 0

    method puedeSerEntregado(unMensajero) {
        return self.estaPago() && pasaPorTodos(unMensajero)
    }

    method pasarPorTodos(unMensajero) = destinos.all(d=> d.dejaPasar(unMensajero))

    method precio() = destinos.size() * 100
   
    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }

    method estaPago() = pagado >= self.precio()

}
