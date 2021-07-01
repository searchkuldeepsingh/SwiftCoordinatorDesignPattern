//
//  Coordinator.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}


extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}
