//
//  RestaurantesController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvRestaurante: UITableView!
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "Pollo Loco", direccion: "Calle Ocho" , telefono: 6661258763, descripcion: "Es un restaurante que vende pollo asado." ))
        
        restaurantes.append(Restaurante(nombre: "Sushi loco", direccion: "Av. Juarez 5", telefono: 6471141625, descripcion: "Sushi muy bueno"))
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        
        return celda!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesRestaurante" {
            let destino = segue.destination as?
            DetallesRestauranteController
            destino?.restaurante = restaurantes[tvRestaurante.indexPathForSelectedRow!.row]
        }
        
    }
}
