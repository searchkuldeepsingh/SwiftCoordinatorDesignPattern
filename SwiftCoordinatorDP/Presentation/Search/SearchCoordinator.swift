//
//  SearchCoordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol SearchFlow: class {
    func coordinateToDetail()
}

class SearchCoordinator: Coordinator, SearchFlow {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let searchViewController = SearchViewController()
        searchViewController.coordinator = self
        
        navigationController?.pushViewController(searchViewController, animated: false)
    }
    
    // MARK: - Flow Methods
    func coordinateToDetail() {
        let searchDetailCoordinator = SearchDetailCoordinator(navigationController: navigationController!)
        coordinate(to: searchDetailCoordinator)
    }
    
}
