//
//  SearchDetailCoordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol SearchDetailFlow {
    func dismissDetail()
}

class SearchDetailCoordinator: Coordinator, SearchDetailFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let searchDetailViewController = SearchDetailViewController()
        searchDetailViewController.coordinator = self
        
        navigationController.present(searchDetailViewController, animated: true, completion: nil)
    }
    
    // MARK: - Flow Methods
    func dismissDetail() {
        navigationController.dismiss(animated: true, completion: nil)
    }
}
