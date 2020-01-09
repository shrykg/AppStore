//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Shreyak Godala on 07/01/20.
//  Copyright © 2020 Shreyak Godala. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        
        
        let todayController = UIViewController()
        todayController.view.backgroundColor = .white
        
        todayController.navigationItem.title = "Today"
        
        let todayNavController = UINavigationController(rootViewController: todayController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon")
        todayNavController.navigationBar.prefersLargeTitles = true
        
        
        let appsController = UIViewController()
        appsController.view.backgroundColor = .white
        appsController.navigationController?.navigationBar.prefersLargeTitles = true
        appsController.navigationItem.title = "Apps"
        
        let appsNavController = UINavigationController(rootViewController: appsController)
        appsNavController.tabBarItem.title = "Apps"
        appsNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        appsNavController.navigationBar.prefersLargeTitles = true
        
        
        let searchController = UIViewController()
        searchController.view.backgroundColor = .white
        searchController.navigationController?.navigationBar.prefersLargeTitles = true
        searchController.navigationItem.title = "Search"
        
        let searchNavController = UINavigationController(rootViewController: searchController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        searchNavController.navigationBar.prefersLargeTitles = true
        
        
        
        
        viewControllers = [todayNavController, appsNavController, searchNavController]
        
        
    }
    

    
}
