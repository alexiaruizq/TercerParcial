//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var contacto : Contacto?
    var callbackActualizarTVContactos : (() -> Void)?
    var callbackEliminarContacto : ((Int) -> Void)?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblApellido: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblSexo: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblEntidad: UILabel!
    @IBOutlet weak var lblLocalidad: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblCelular: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
    
    @IBOutlet weak var lblNombreEditar: UILabel!
    @IBOutlet weak var lblApellidoEditar: UILabel!
    @IBOutlet weak var lblIdEditar: UILabel!
    @IBOutlet weak var lblSexoEditar: UILabel!
    @IBOutlet weak var lblPaisEditar: UILabel!
    @IBOutlet weak var lblEntidadEditar: UILabel!
    @IBOutlet weak var lblLocalidadEditar: UILabel!
    @IBOutlet weak var lblDireccionEditar: UILabel!
    @IBOutlet weak var lblCelularEditar: UILabel!
    @IBOutlet weak var lblCorreoEditar: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Contacto"
        
        lblNombre.text = contacto!.nombre
        lblApellido.text = contacto!.apellido
        lblId.text = "\("ID: ") \(contacto!.id)"
        lblSexo.text = contacto!.sexo
        lblPais.text = contacto!.pais
        lblEntidad.text = contacto!.entidad
        lblLocalidad.text = contacto!.localidad
        lblDireccion.text = contacto!.direccion
        lblCelular.text = contacto!.celular
        lblCorreo.text = contacto!.correo
        
        txtNombre.text = contacto!.nombre
        txtApellido.text = contacto!.apellido
        txtId.text = contacto!.id
        txtSexo.text = contacto!.sexo
        txtPais.text = contacto!.pais
        txtEntidad.text = contacto!.entidad
        txtLocalidad.text = contacto!.localidad
        txtDireccion.text = contacto!.direccion
        txtCelular.text = contacto!.celular
        txtCorreo.text = contacto!.correo
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarContacto!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Contacto"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblNombre.isHidden = true
        lblApellido.isHidden = true
        lblId.isHidden = true
        lblSexo.isHidden = true
        lblPais.isHidden = true
        lblEntidad.isHidden = true
        lblLocalidad.isHidden = true
        lblDireccion.isHidden = true
        lblCelular.isHidden = true
        lblCorreo.isHidden = true
        
        lblNombreEditar.isHidden = false
        lblApellidoEditar.isHidden = false
        lblIdEditar.isHidden = false
        lblSexoEditar.isHidden = false
        lblPaisEditar.isHidden = false
        lblEntidadEditar.isHidden = false
        lblLocalidadEditar.isHidden = false
        lblDireccionEditar.isHidden = false
        lblCelularEditar.isHidden = false
        lblCorreoEditar.isHidden = false
        
        txtNombre.isEnabled = true
        txtNombre.isHidden = false
        txtApellido.isEnabled = true
        txtApellido.isHidden = false
        txtId.isEnabled = true
        txtId.isHidden = false
        txtSexo.isEnabled = true
        txtSexo.isHidden = false
        txtPais.isEnabled = true
        txtPais.isHidden = false
        txtEntidad.isEnabled = true
        txtEntidad.isHidden = false
        txtLocalidad.isEnabled = true
        txtLocalidad.isHidden = false
        txtDireccion.isEnabled = true
        txtDireccion.isHidden = false
        txtCelular.isEnabled = true
        txtCelular.isHidden = false
        txtCorreo.isEnabled = true
        txtCorreo.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Contacto"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblApellido.isHidden = false
        lblId.isHidden = false
        lblSexo.isHidden = false
        lblPais.isHidden = false
        lblEntidad.isHidden = false
        lblLocalidad.isHidden = false
        lblDireccion.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        
        lblNombreEditar.isHidden = true
        lblApellidoEditar.isHidden = true
        lblIdEditar.isHidden = true
        lblSexoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblEntidadEditar.isHidden = true
        lblLocalidadEditar.isHidden = true
        lblDireccionEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtApellido.isEnabled = false
        txtApellido.isHidden = true
        txtId.isEnabled = false
        txtId.isHidden = true
        txtSexo.isEnabled = false
        txtSexo.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtEntidad.isEnabled = false
        txtEntidad.isHidden = true
        txtLocalidad.isEnabled = false
        txtLocalidad.isHidden = true
        txtDireccion.isEnabled = false
        txtDireccion.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        
        contacto!.nombre = txtNombre.text!
        contacto!.apellido = txtApellido.text!
        contacto!.id = txtId.text!
        contacto!.sexo = txtSexo.text!
        contacto!.pais = txtPais.text!
        contacto!.entidad = txtEntidad.text!
        contacto!.localidad = txtLocalidad.text!
        contacto!.direccion = txtDireccion.text!
        contacto!.celular = txtCelular.text!
        contacto!.correo = txtCorreo.text!
        
        lblNombre.text = txtNombre.text!
        lblApellido.text = txtApellido.text!
        lblId.text = txtId.text!
        lblSexo.text = txtSexo.text!
        lblPais.text = txtPais.text!
        lblEntidad.text = txtEntidad.text!
        lblLocalidad.text = txtLocalidad.text!
        lblDireccion.text = txtDireccion.text!
        lblCelular.text = txtCelular.text!
        lblCorreo.text = txtCorreo.text!
        
        callbackActualizarTVContactos!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Contacto"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblApellido.isHidden = false
        lblId.isHidden = false
        lblSexo.isHidden = false
        lblPais.isHidden = false
        lblEntidad.isHidden = false
        lblLocalidad.isHidden = false
        lblDireccion.isHidden = false
        lblCelular.isHidden = false
        lblCorreo.isHidden = false
        
        lblNombreEditar.isHidden = true
        lblApellidoEditar.isHidden = true
        lblIdEditar.isHidden = true
        lblSexoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblEntidadEditar.isHidden = true
        lblLocalidadEditar.isHidden = true
        lblDireccionEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtApellido.isEnabled = false
        txtApellido.isHidden = true
        txtId.isEnabled = false
        txtId.isHidden = true
        txtSexo.isEnabled = false
        txtSexo.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtEntidad.isEnabled = false
        txtEntidad.isHidden = true
        txtLocalidad.isEnabled = false
        txtLocalidad.isHidden = true
        txtDireccion.isEnabled = false
        txtDireccion.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        
        txtNombre.text = contacto!.nombre
        txtApellido.text = contacto!.apellido
        txtId.text = contacto!.id
        txtSexo.text = contacto!.sexo
        txtPais.text = contacto!.pais
        txtEntidad.text = contacto!.entidad
        txtLocalidad.text = contacto!.localidad
        txtDireccion.text = contacto!.direccion
        txtCelular.text = contacto!.celular
        txtCorreo.text = contacto!.correo
    }
    
    
}
