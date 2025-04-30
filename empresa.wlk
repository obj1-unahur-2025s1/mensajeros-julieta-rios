import mensajeros.*
import destinos.*
import paquetes.*

object mensajeria {
    const mensajeros = [roberto, chuckNorris]
    const enviados = []
    const pendientes = []

    method contratar(unMensajero) {
        mensajeros.add(unMensajero)
    }
    method despedir(unMensajero) {
        mensajeros.remove(unMensajero)
    }
    method despedirATodos(){
        mensajeros.clear()
    }
    method esGrande() = mensajeros.size() > 2

    method elPrimerMensajeroPuedeEntregar(unPaquete){
        return unPaquete.puedeSerEntregado(mensajeros.first())
    }

    method pesoDelUltimoMensajero() = mensajeros.last().peso()

    method puedeEntregar(unPaquete){
        return mensajeros.any{m=>unPaquete.puedeSerEntregado(m)}
    }

    method quienesPuedenEntregar(unPaquete){
        return mensajeros.filter{m=>unPaquete.puedeSerEntregado(m)}
    }

    method tieneSobrepeso() {
        return if (mensajeros.empty()) 
                    false 
                else 
                    self.pesoTotal() / self.cantidadMensajeros() > 500
    }
    method cantidadMensajeros() = mensajeros.size()

    method pesoTotal() = mensajeros.sum({ m => m.peso()})

    method enviar(unPaquete) {
        if (self.puedeEntregar(unPaquete))
            enviados.add(unPaquete)
        else
            pendientes.add(unPaquete)
    }

    method facturacion() = enviados.sum{ p=> p.precio()}

    method enviarTodos(paquetesAEnviar){
        paquetesAEnviar.forEach(p=>self.enviar(p))
    }

    method reenviarPendienteCaro() {
        const caro = self.pendienteCaro()
        pendientes.remove(caro)
        self.enviar(caro)
    }

    method pendienteCaro() = pendientes.max{p=>p.precio()}
}