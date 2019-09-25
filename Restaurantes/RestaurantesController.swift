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
    
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad() {
        
        
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
}
