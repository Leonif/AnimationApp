//
//  AnimationPartOneView.swift
//  AnimationApp
//
//  Created by Leonid Nifantyev on 04.09.2020.
//  Copyright © 2020 Leonid Nifantyev. All rights reserved.
//

import UIKit

class AnimationPartOneView: UIView {

    let testView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        testView.center = center
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSelf()
        setupTestView()
    }
    
    private func setupTestView() {
//        testView.translatesAutoresizingMaskIntoConstraints = false
        testView.backgroundColor = .blue
        testView.frame.size = CGSize(width: 100, height: 100)
        addSubview(testView)
    }
    
    private func setupSelf() {
        backgroundColor = .yellow
//        translatesAutoresizingMaskIntoConstraints = false
    }

}
