//
//  SecondViewController.swift
//  Forcing ViewController Rotation.Demo
//
//  Created by Art Arriaga on 3/3/20.
//  Copyright © 2020 ArturoArriaga.IO. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let someView: UIView = {
        let v = UIView()
        v.backgroundColor = .green
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.view.addSubview(someView)
        
        NSLayoutConstraint.activate([
            someView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            someView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            someView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)
        ])
    }
    
    override public var shouldAutorotate: Bool {
      return false
    }
    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
      return .landscapeRight
    }
    override public var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
      return .landscapeRight
    }
}
