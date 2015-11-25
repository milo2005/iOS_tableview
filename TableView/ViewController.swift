//
//  ViewController.swift
//  TableView
//
//  Created by Aplimovil on 11/25/15.
//  Copyright © 2015 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var data:[Animal]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = [Animal(nombre: "Gato", tipo: "Felino")
            ,Animal(nombre: "Perro", tipo: "Canino")
            ,Animal(nombre: "Conejo", tipo:"Roedor")
        ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       /* var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("celda")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "celda")
        }
        
        cell?.textLabel?.text = "Hola"*/
        
        let cell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("celda") as! CustomTableViewCell
        
        let pos = indexPath.row
        
        cell.title.text = data[pos].nombre
        cell.subtitle.text = data[pos].tipo
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    


}

