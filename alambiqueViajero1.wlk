object luke {
    var vehiculo = alambiqueVeloz

    method vehiculo() = vehiculo

    method cambiarDeVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }
    
    method puedeViajar(ciudad) = ciudad.restriccion(vehiculo)

    method viajar(ciudad) {
        if (self.puedeViajar(ciudad)) {
            vehiculo.comportamiento()
            self.guardarRecuerdo(ciudad)
            self.registrarViaje()
        }
    }

    var recuerdo = bombaAtomica
    
    method guardarRecuerdo(ciudad) {
        recuerdo = ciudad.recuerdo()
    }
    method recuerdo() = recuerdo

    var lugares = 0

    method registrarViaje() {
        lugares += 1
    }
    method cantidadDeLugaresVisitados() = lugares
}
 

//Vehiculos: 
object alambiqueVeloz {
    var combustible = 50

    method combustible() = combustible
    method recargarTanque(aumentoDeCombustible) {
        combustible += aumentoDeCombustible
    }

    method comportamiento() {
        combustible -= 10 
    }

    method esRapido() = true
}


object superChatarraEspecial {
    var canionesPuestos = false

    method canionesPuestos() = canionesPuestos

    method comportamiento() {
        canionesPuestos = !canionesPuestos 
    }

    var combustible = 80
    method combustible() = combustible
    method combustibleActual() {
        if (canionesPuestos) {
            combustible = 80
        }else {
            combustible = 50
        }
    }
    method esRapido() = false
}

object antiguallaBlindada {
    method esRapido(ciudad) = ciudad.cantidadDeGangsters() < 7

    method combustible() = 50

    method comportamiento() {}
}



//Ciudades
object bagdad {
    var recuerdo = bidonDeCrudo

    method cambiarRecuerdo(nuevoRecuerdo) {
        recuerdo = nuevoRecuerdo
    }
    method recuerdo() = recuerdo

    method restriccion(vehiculo) = true

    var gangster = 5
    method cantidadDeGangsters() = gangster
    method cambiarCantidadDeGangsters(nuevaCantidad) {
           gangster = nuevaCantidad.max(1)
    }
}

object buenosAires {
    var recuerdo = mateConYerba
    method recuerdo() = recuerdo
    method puebloEligePresidenteBueno() {
        recuerdo = mateConYerba
    }
    method puebloEligePresidenteMalo() {
        recuerdo = mateSinYerba
    }
    
    method restriccion(vehiculo) = vehiculo.esRapido()

    var gangster = 5
    method cantidadDeGangsters() = gangster
    method cambiarCantidadDeGangsters(nuevaCantidad) {
        gangster = nuevaCantidad.max(1)
    }
}

object lasVegas {
    var homenaje = paris

    method cambiarCiudadHomenajeada(nuevaCiudad){
        homenaje = nuevaCiudad
    }
    method homenajea() = homenaje
    method recuerdo() = homenaje.recuerdo()
    method restriccion(vehiculo) = homenaje.restriccion(vehiculo)

    var gangster = 5

    method cantidadDeGangsters() = gangster

    method cambiarCantidadDeGangsters(nuevaCantidad) {
        gangster = nuevaCantidad.max(1)
    }
}

object paris {
    method recuerdo() = llaveroTorreEiffel
    method restriccion(vehiculo) = vehiculo.combustible() >= 10

    var gangster = 5

    method cantidadDeGangsters() = gangster

    method cambiarCantidadDeGangsters(nuevaCantidad) {
        gangster = nuevaCantidad.max(1)
    }
}


//Recuerdos

object mateConYerba {
  
}

object mateSinYerba {
  
}

object llaveroTorreEiffel {
  
}

object jardinesColgantes {
  
}

object bidonDeCrudo {
  
}

object bombaAtomica {
  
}