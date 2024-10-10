//
//  LoginBottomSheetViewController.swift
//  Reminder
//
//  Created by Arthur Rios on 10/10/24.
//

import Foundation
import UIKit

class LoginBottomSheetViewController: UIViewController {
    let loginView = LoginBottomSheetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        setupConstraints()
    }
    
    private func setupConstraints() {
        self.view.addSubview(loginView)
    }
}
