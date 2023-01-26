//
//  ViewController.swift
//  TableViewHW7
//
//  Created by Artur on 13.01.2023.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var personList = Person.getPersonList()
    //var personList: [Person] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = personList[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //отмена выделения после нажатия
        
        let viewController = ShowContactViewController()
        viewController.person = personList[indexPath.row]
            
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}


