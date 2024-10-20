//
//  HomeViewController.swift
//  Reminder
//
//  Created by Arthur Rios on 20/10/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    let contentView: HomeView
    let flowDelegate: HomeFlowDelegate
        
    init(contentView: HomeView,
         flowDelegate: HomeFlowDelegate
    ) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindView()
        setup()
    }
    
    private func setupBindView() {
        self.view = contentView
    }
    
    private func setup() {
        buildHierarchy()
    }
    
    private func buildHierarchy() {
        setupContentViewToBounds(contentView: contentView)
    }
    
    
}