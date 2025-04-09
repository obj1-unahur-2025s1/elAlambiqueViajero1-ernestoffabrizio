object luke{
    var cantidadDeViajes = 0
    var recuerdo = ""
    method cuantosViajesHizo(){
        return(
            cantidadDeViajes
        )
    }
    method recuerdo(){
        return(
            recuerdo
        )
    }
    method viajarA_En_(unLugar, unVehiculo){
        if (unLugar.sePuedeVisitar()){
        cantidadDeViajes = cantidadDeViajes +1
        recuerdo = unVehiculo.ultimoRecuerdoDe(unLugar)
        }
    }
}
object elAlambiqueVeloz{
    const combustible = 10 - luke.cuantosViajesHizo()
    var velocidad = 10 
    method tieneVelocidadDe(unaVelocidad){
        velocidad = unaVelocidad
    }
    method cantidadDeCombustible(){
        return(
            combustible
        )
    }
    method cantidadDeVelocidad(){
        return(
            velocidad
        )
    }
    method ultimoRecuerdoDe(lugar){
        return(
            lugar.recuerdo()
        )
    }
}
object elSuperChatarraEspecial{
    var combustible = 10
    var tieneCañones = false
    var tieneMuniciones = false
    method tieneCañones(){
        tieneCañones = true
        return(
            tieneCañones
        )
    }
    method tieneMuniciones(){
        tieneMuniciones = true
        return(
            tieneMuniciones
        )
    }
    method cantidadDeCombustible(){
        if(tieneCañones){
            combustible = 5
        }
        else{
            combustible = 10
        }
    }
    method cantidadDeVelocidad(){
        return(
            10
        )
    }
}
object laAntiguallaBlindada{
    var gangster = 0
    method cantidadDeGangster(unaCantidad){
        gangster = unaCantidad
    }
    method cantidadDeVelocidad(){
        return(
            10 - gangster
        )
    }
}
object elSuperConvertible{
    var convertidoEn = "auto"
    var combustible = 0
    var velocidad = 0
    method estaConvertidoEn(unVehiculo){
        convertidoEn = unVehiculo
    }
    method cantidadDeCombustible(){
        if (convertidoEn =="auto") {
            combustible = 10
        }
        if (convertidoEn =="camion") {
            combustible = 20
        }    
        else {
            combustible = 5
        }
        return(
            combustible
        )
        }
    method cantidadDeVelocidad(){
               if (convertidoEn =="auto") {
            velocidad = 10
        }
        if (convertidoEn =="camion") {
            velocidad = 5
        }    
        else {
            velocidad = 20
        }
        return(
            velocidad
        ) 
    }
}
object paris{
    method recuerdo(){
        return(
            "llavero"
        )
    }
    method sePuedeVisitar(){
        return(
            elAlambiqueVeloz.cantidadDeCombustible() >= 10
        )
    }
}
object buenosAires{
    var elPresidenteDaYerba = false
    var recuerdo = "mate"
    method estePresidenteSiDaYerba(){
        elPresidenteDaYerba = true
    }
    method recuerdo(){
        if (elPresidenteDaYerba){
            recuerdo = "mate con yerba"
        }
        return(
            recuerdo
        )
    }
    method sePuedeVisitar(){
        return(
            elAlambiqueVeloz.cantidadDeCombustible() >= 10
        )
    }
}
object bagdad{
    var recuerdo = "bidon de petroleo"
    method recuerdo(){
        return(
            recuerdo
        )
    }
    method recuerdoNuevo(nuevoRecuerdo){
        recuerdo = nuevoRecuerdo
    }
    method sePuedeVisitar(){
        return(
            true
        )
    }
}
object lasVegas{
    var recuerdo = ""
    var lugarDeHomenaje = 0
    method haceHomenajeA_(unLugar){
        recuerdo = unLugar.recuerdo()
        lugarDeHomenaje = unLugar
        }
    method recuerdo(){
        return(
            recuerdo
        )
    }
    method sePuedeVisitar(){
        return(
            lugarDeHomenaje.sePuedeVisitar()
        )
    }
}
