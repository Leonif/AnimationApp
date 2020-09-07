//
//  GraphiView.swift
//  AnimationApp
//
//  Created by Leonid Nifantyev on 04.09.2020.
//  Copyright © 2020 Leonid Nifantyev. All rights reserved.
//

import UIKit

class GraphiView: UIView {
    
    let label = UILabel()
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    override func updateConstraints() {
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])

        super.updateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSelf()
        setupLabel()
        setupImageView()
    }
    
    private func setupLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, World!"
        label.font = UIFont.systemFont(ofSize: 16)
        addSubview(label)
    }
    
    private func setupImageView() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cosmonaut")
        addSubview(imageView)
    }
    
    private func setupSelf() {
        backgroundColor = .yellow
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
