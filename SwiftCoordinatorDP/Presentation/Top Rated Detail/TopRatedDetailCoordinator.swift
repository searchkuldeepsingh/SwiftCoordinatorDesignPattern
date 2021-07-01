//
//  TopRatedDetailCoordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol TopRatedDetailFlow: class {
    func dismissDetail()
}

class TopRatedDetailCoordinator: Coordinator, TopRatedDetailFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let topRatedDetailViewController = TopRatedDetailViewController()
        topRatedDetailViewController.coordinator = self
        navigationController.present(topRatedDetailViewController, animated: true, completion: nil)
    }
    
    // MARK: - Flow Methods
    func dismissDetail() {
        navigationController.dismiss(animated: true, completion: nil)
    }
    
}
