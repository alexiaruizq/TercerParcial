//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Contacto{
    var id : String
    var nombre : String
    var apellido : String
    var sexo : String
    var pais : String
    var entidad : String
    var localidad : String
    var direccion : String
    var celular : String
    var correo : String

    init(id: String, nombre: String, apellido: String, sexo: String, pais: String, entidad: String, localidad: String, direccion: String, celular: String, correo:String){
        self.id = id
        self.nombre = nombre
        self.apellido = apellido
        self.sexo = sexo
        self.pais = pais
        self.entidad = entidad
        self.localidad = localidad
        self.direccion = direccion
        self.celular = celular
        self.correo = correo
    }
}
