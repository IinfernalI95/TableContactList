//
//  TabBarViewController.swift
//  TableViewHW7
//
//  Created by Artur on 25.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        //setupViewControllers(with: persons)
        //123
    }
    
//    private func setupViewControllers(with persons: [Person]) {
//        let viewController = viewControllers?.first as! ViewController
//        let showFullContactVC = viewControllers?.last as! ShowFullContactsViewController
//        
//        viewController.personList = persons
//        showFullContactVC.personList = persons
//    }
}
