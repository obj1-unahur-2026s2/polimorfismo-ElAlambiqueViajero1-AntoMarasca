object luke {
    
}


//Vehiculos: 
object alambiqueVeloz {
    var combustible = 50

    method combustible() = combustible
    method recargarTanque(aumentoDeCombustible) {
        combustible += aumentoDeCombustible
    }

    method viaje() {
        combustible -= 10 //Revisar después si va acá (y cambia de nombre) o va en Luke. 
    }

    method esRapido() = true
}

/*

 */
object superChatarraEspecial {
    var canionesPuestos = false



    method esRapido() = false
}

object antiguallaBlindada {
  
}

object bagdad {
  var recuerdo = bidonDeCrudo

  method cambiarRecuerdo(nuevoRecuerdo) {
    recuerdo = nuevoRecuerdo
  }
  method recuerdo() = recuerdo
}

object buenosAires {
  method recuerdo() = mateConYerba || mateSinYerba // Depende del presidente
}

object lasVegas {
    var homenaje = paris

    method cambiarCiudadHomenajeada(nuevaCiudad){
        homenaje = nuevaCiudad
    }
    method homenajea() = homenaje
    method recuerdo() {
        homenaje.recuerdo()
    }
    method restriccion() = homenaje.restriccion()
}

object paris {
    method recuerdo() = llaveroTorreEiffel
    method restriccion() { 
        vehiculo().combustible() >= 10
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