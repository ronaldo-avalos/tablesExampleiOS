//
//  ViewController.swift
//  TablesExample
//
//  Created by ronaldo avalos on 24/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
// MARK; Referencia a la tabla
@IBOutlet weak var tableView: UITableView!
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell_Custom", bundle: nil), forCellReuseIdentifier: "TableViewCell_Custom" )
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        // Do any additional setup after loading the view.
        // Para interactuar implmentar el delegate
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda \(indexPath.row) fue selccionada")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell_Custom",for: indexPath)
        
        (cell as? TableViewCell_Custom)?.setupCell(userName: "@Usuario\(indexPath.row)", userMessage: "Soy un tweet!")
        
        return cell
    }
    
}


