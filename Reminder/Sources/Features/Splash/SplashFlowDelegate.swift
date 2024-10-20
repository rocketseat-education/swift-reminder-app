//
//  SplashFlowDelegate.swift
//  Reminder
//
//  Created by Arthur Rios on 18/10/24.
//

import Foundation

public protocol SplashFlowDelegate: AnyObject {
    func openLoginBottomSheet()
    func navigateToHome()
}
