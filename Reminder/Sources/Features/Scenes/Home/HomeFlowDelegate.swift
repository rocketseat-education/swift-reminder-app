//
//  HomeFlowDelegate.swift
//  Reminder
//
//  Created by Arthur Rios on 20/10/24.
//

import Foundation

public protocol HomeFlowDelegate: AnyObject {
    func navigateToRecipes()
    func logout()
}
