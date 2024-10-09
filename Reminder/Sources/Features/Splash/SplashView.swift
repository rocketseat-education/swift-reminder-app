//
//  SplashView.swift
//  Reminder
//
//  Created by Arthur Rios on 05/10/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLogoLabel: UILabel = {
        let label = UILabel()
        label.text = "Remind"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.backgroundColor = UIColor(red: 192/255, green: 38/255, blue: 54/255, alpha: 1)
        
        self.addSubview(logoImageView)
        self.addSubview(titleLogoLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLogoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 24),
            titleLogoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            logoImageView.trailingAnchor.constraint(equalTo: titleLogoLabel.leadingAnchor, constant: -8),
            logoImageView.bottomAnchor.constraint(equalTo: titleLogoLabel.bottomAnchor)
        ])
    }
}
