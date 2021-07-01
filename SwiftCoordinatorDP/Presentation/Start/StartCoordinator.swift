//
//  StartCoordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol StartFlow: class {
    func coordinateToTabBar()
}

class StartCoordinator: Coordinator, StartFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let startViewController = StartViewController()
        startViewController.coordinator = self
        navigationController.pushViewController(startViewController, animated: true)
    }
    
    // MARK: - Flow Methods
    func coordinateToTabBar() {
        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
        coordinate(to: tabBarCoordinator)
    }
}
