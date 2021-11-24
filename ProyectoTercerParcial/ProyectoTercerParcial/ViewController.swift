//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var contactos : [Contacto] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvContactos: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblApellido.text = contactos[indexPath.row].apellido
        celda.lblCelular.text = contactos[indexPath.row].celular
        celda.lblCorreo.text = contactos[indexPath.row].correo

        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let contactoSeleccionado = contactos[tvContactos.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.contacto = contactoSeleccionado
            destino.indice = tvContactos.indexPathForSelectedRow!.row
            destino.callbackActualizarTVContactos = actualizarTVContactos
            destino.callbackEliminarContacto = eliminarContacto
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarContacto = agregarContacto
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de contactos"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contactos.append(Contacto(id: "1", nombre: "Luis", apellido: "Martinez", sexo: "Masculino", pais: "Mexico", entidad: "Zacatecas", localidad: "Zacatecas", direccion: "Palo Alto #209", celular: "874937224", correo: "luismartinez@outlook.com"))
        contactos.append(Contacto(id: "2", nombre: "Erika", apellido: "Jimenez", sexo: "Femenino", pais: "Mexico", entidad: "Sonora", localidad: "Hermosillo", direccion: "Colonia Norte #987", celular: "6893637267", correo: "erikajimenez@outlook.com"))
        contactos.append(Contacto(id: "3", nombre: "Pablo", apellido: "Lopez", sexo: "Masculino", pais: "Mexico", entidad: "Chihuahua", localidad: "Chihuahua", direccion: "Los girasoles #111", celular: "6978324656", correo: "pablolopez@outlook.com"))
        contactos.append(Contacto(id: "4", nombre: "Fabiola", apellido: "Vazquez", sexo: "Femenino", pais: "Mexico", entidad: "Sinaloa", localidad: "Cualiacan", direccion: "Las palmas #603", celular: "9823862665", correo: "fabivzq@outlook.com"))
        
        contactos.append(Contacto(id: "5", nombre: "Juan", apellido: "Garcia", sexo: "Masculino", pais: "Mexico", entidad: "Jalisco", localidad: "Guadalajara", direccion: "La Villa #444", celular: "1267349843", correo: "juangarcia@outlook.com"))
        contactos.append(Contacto(id: "6", nombre: "Marta", apellido: "Gonzalez", sexo: "Femenino", pais: "Mexico", entidad: "Baja California", localidad: "Mexicali", direccion: "La Bahia #821", celular: "6876737679", correo: "martagonzalez@outlook.com"))
        contactos.append(Contacto(id: "7", nombre: "Pedro", apellido: "Hernandez", sexo: "Masculino", pais: "Mexico", entidad: "Michoacan", localidad: "Morelia", direccion: "Casa Blanca #67", celular: "4202132465", correo: "pedrohernandez@outlook.com"))
        contactos.append(Contacto(id: "8", nombre: "Alondra", apellido: "Blanco", sexo: "Femenino", pais: "Mexico", entidad: "Veracruz", localidad: "Xalapa", direccion: "El Puerto #999", celular: "9023672144", correo: "alondrablanco@outlook.com"))
        contactos.append(Contacto(id: "9", nombre: "Jesus", apellido: "Enriquez", sexo: "Masculino", pais: "Mexico", entidad: "Yucatan", localidad: "Merida", direccion: "Chichen Itza #333", celular: "9933226611", correo: "jesusenriquez@outlook.com"))
        contactos.append(Contacto(id: "10", nombre: "Maria", apellido: "Quintero", sexo: "Femenino", pais: "Mexico", entidad: "Nuevo Leon", localidad: "Monterrey", direccion: "Los Arcos #373", celular: "0022933832", correo: "mariaquintero@outlook.com"))
    }
    
    func actualizarTVContactos() {
        tvContactos.reloadData()
    }
    
    func eliminarContacto(indice : Int) {
        contactos.remove(at: indice)
        actualizarTVContactos()
    }
    
    func agregarContacto(contacto: Contacto) {
        contactos.append(contacto)
        actualizarTVContactos()
    }
}

