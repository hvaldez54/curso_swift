//: Velocimentro de un auto digital
//: Hector Valdez Castro

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades) {
      self = velocidadInicial
    }
}

class Auto {
    
    var velocidad: Velocidades
    
    init()
    {
        velocidad = Velocidades(velocidadInicial: .Apagado)
        
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        var textoVelocidad: String
        let velocidadActual: Int = velocidad.rawValue
        
        switch velocidad.self {
        case .Apagado:
            textoVelocidad = "Apagado"
        case .VelocidadBaja:
            textoVelocidad = "Velocidad Baja"
        case .VelocidadMedia:
            textoVelocidad = "Velocidad Media"
        case .VelocidadAlta:
            textoVelocidad = "Velocidad Alta"
        }
        
        switch velocidad.self {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }
        
        return (velocidadActual, textoVelocidad)
    }
}

var auto: Auto
auto = Auto()

for rango in 1...20{
  print(auto.cambioDeVelocidad())
}


