//
//  ShowContactViewController.swift
//  TableViewHW7
//
//  Created by Artur on 13.01.2023.
//

import UIKit

class ShowContactViewController: UIViewController {

    var person: Person!
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email - \(person.email)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone number - \(person.phoneNumber)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeConstraints()
        
        view.backgroundColor = .white
        navigationController?.title = person.name
    }
    
    private func makeConstraints() {
        view.addSubview(emailLabel) // добавляем кнопку на view
        view.addSubview(phoneLabel) //добавляем лейбл
        
        //добавляем констрейнты
        NSLayoutConstraint.activate([
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16), // центр по оси Х
            emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),// центр по оси Y
            
            phoneLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16), // центр по оси Х
            phoneLabel.centerYAnchor.constraint(equalTo: emailLabel.centerYAnchor, constant: 20), //центр по оси Y
        ])
    }
}
