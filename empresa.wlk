import mensajeros.*
import destinos.*
import paquetes.*

object empresaDeMensajeria {
    const mensajeros = []

    method contratar(unMensajero) {
        mensajeros.add(unMensajero)
    }
    method despedirA(unMensajero) {
        mensajeros.remove(unMensajero)
    }
    method despedirATodos(){
        mensajeros.clear()
    }
    method esGrande(){
        mensajeros.size() > 2
    }

    method elPrimerMensajeroPuedeEntregarElPaquete(unLugar){
        paquete.puedeSerEntregado(mensajeros.first(), unLugar)
    }

    method pesoDelUltimoMensajero(){
        mensajeros.last().peso()
    }
}