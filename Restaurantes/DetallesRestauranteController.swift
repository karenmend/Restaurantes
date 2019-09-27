//
//  DetallesRestauranteController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestauranteController: UIViewController{
    var restaurante : Restaurante?
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    override func viewDidLoad() {
        
        self.title = restaurante!.nombre
        
        lblDescripcion.text = "\(restaurante!.descripcion!)"
        
        lblTelefono.text = "\(restaurante!.telefono!)"
        
        lblDireccion.text = "\(restaurante!.direccion!)"
        
    }
}
