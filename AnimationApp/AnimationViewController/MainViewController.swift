//
//  ViewController.swift
//  AnimationApp
//
//  Created by Leonid Nifantyev on 04.09.2020.
//  Copyright © 2020 Leonid Nifantyev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let rootView = AnimationPartOneView()
    let transaltion: CGAffineTransform
    let scale: CGAffineTransform
    let rotation: CGAffineTransform
    
    init() {
        transaltion = CGAffineTransform(translationX: 20, y: 50)
        scale = CGAffineTransform(scaleX: 2, y: 2)
        rotation = CGAffineTransform(rotationAngle: .pi / 4)
        
        super.init(nibName: .none, bundle: .none)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func loadView() {
        super.loadView()
        
        view = rootView
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.rootView.testView.center = CGPoint(x: 10, y: 10)
        })
        
        
    }
}

