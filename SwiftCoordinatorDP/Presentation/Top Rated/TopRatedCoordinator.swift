//
//  TopRatedCoordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol TopRatedFlow: class {
    func coordinateToDetail()
}

class TopRatedCoordinator: Coordinator, TopRatedFlow {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    // MARK: - Flow Methods
    func coordinateToDetail() {
        let topRatedDetailCoordinator = TopRatedDetailCoordinator(navigationController: navigationController!)
        coordinate(to: topRatedDetailCoordinator)
    }
}
