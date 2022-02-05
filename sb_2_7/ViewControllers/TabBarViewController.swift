//
//  TabBarViewController.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let dataManager = DataManager()
        setDataToViewControllers(persons: dataManager.getPersons())
        
    }
    
    func setDataToViewControllers(persons: [Person]) {
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let linearVC = viewController as? linearListViewController {
                linearVC.persons = persons
            } else if let secionalVC = viewController as? sectionalListViewController {
                secionalVC.persons = persons
            }
        }
    }

}
