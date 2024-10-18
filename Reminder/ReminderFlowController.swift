//
//  ReminderFlowController.swift
//  Reminder
//
//  Created by Arthur Rios on 18/10/24.
//

import Foundation
import UIKit

class ReminderFlowController {
    //MARK: - Properties
    private var navigationController: UINavigationController?
    //private let viewControllerFactory
    //MARK: - Splash
    //MARK: - Login
    //MARK: - init
    public init() {
        
    }
    
    //MARK: - startFlow
    func start() -> UINavigationController? {
        let startViewController = SplashViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
    }
}
