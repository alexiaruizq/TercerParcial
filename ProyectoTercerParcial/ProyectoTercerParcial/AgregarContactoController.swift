//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtPais: UITextField!
    @IBOutlet weak var txtEntidad: UITextField!
    @IBOutlet weak var txtLocalidad: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    
    
    var callBackAgregarContacto : ((Contacto) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar contactos"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let apellido = txtApellido.text!
        let id = txtId.text!
        let sexo = txtSexo.text!
        let pais = txtPais.text!
        let entidad = txtEntidad.text!
        let localidad = txtLocalidad.text!
        let direccion = txtDireccion.text!
        let celular = txtCelular.text!
        let correo = txtCorreo.text!
        
        let contacto = Contacto(id: id, nombre: nombre, apellido: apellido, sexo: sexo, pais: pais, entidad: entidad, localidad: localidad, direccion: direccion, celular: celular, correo: correo)
        callBackAgregarContacto!(contacto)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
