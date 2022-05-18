//
//  Albañiles.swift
//  CollectionViewCodigo
//
//  Created by Jesus Urbano on 1/1/22.
//

import Foundation

struct Albañiles {
    
    let nombre : String
    let especialidad : String


    static func data() -> [Albañiles] {
    return [
    
        Albañiles(nombre: "Jesus Urbano", especialidad: "Estuco"),
        Albañiles(nombre: "Juan Antonio", especialidad: "Vitropisos"),
        Albañiles(nombre: "Diego Armando", especialidad: "Bardas"),
        Albañiles(nombre: "Alejanda Almaguer", especialidad: "Demolicion"),
        Albañiles(nombre: "Alma Delia", especialidad: "Acabados"),
        Albañiles(nombre: "Alma Cecilia", especialidad: "Interiores"),
        Albañiles(nombre: "Cristian Rodriguez", especialidad: "Demolicion"),
        Albañiles(nombre: "Rene Canales", especialidad: "Vitropisos"),
        Albañiles(nombre: "Monica Canales", especialidad: "Estuco"),
        Albañiles(nombre: "Angel Canales", especialidad: "Estuco"),
        Albañiles(nombre: "Angel Acevedo", especialidad: "Techos"),
        Albañiles(nombre: "Claudia Mondragon", especialidad: "Bardas"),
        Albañiles(nombre: "Karen Mondragon", especialidad: "Demolicion"),
        Albañiles(nombre: "Efrain Almaguer", especialidad: "Vitropisos"),
        Albañiles(nombre: "Esther Rivera", especialidad: "Estuco"),
        Albañiles(nombre: "Arleth Almaguer", especialidad: "Acabados"),
        Albañiles(nombre: "Alfredo Lopez", especialidad: "Estuco"),
        Albañiles(nombre: "Marco Martinez", especialidad: "Bardas"),
        Albañiles(nombre: "Ramon Rodriguez", especialidad: "Interiores"),
        Albañiles(nombre: "Eduardo Perez", especialidad: "Acabados"),
        Albañiles(nombre: "Ricardo Rivera", especialidad: "Vitropisos")
        
        ]
    }
}
