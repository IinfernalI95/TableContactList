//
//  ShowFullContactsViewController.swift
//  TableViewHW7
//
//  Created by Artur on 17.01.2023.
//

import UIKit

class ShowFullContactsViewController: UIViewController {
    
    var personList = Person.getPersonList()
    //var personList: [Person] = []
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        table.delegate = self
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Person List"
        //navigationItem.title.prefersLargeTitles.

        makeConstraints()
    }
    
    private func makeConstraints() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}

extension ShowFullContactsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 92
        //размер ячейки в таблице на сколько понял (высота)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        else { fatalError("could not dequeueReusableCell") }
        
        let person = personList[indexPath.row]
        cell.setTitle(title: person.fullName)
        cell.emailLabel.text? = person.email
        cell.phoneLabel.text? = person.phoneNumber
        //cell.accessoryType = .detailButton
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        print("TAPPED")
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //отмена выделения после нажатия
    }
}
