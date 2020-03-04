//
//  ContentView.swift
//  Forcing ViewController Rotation.Demo
//
//  Created by Art Arriaga on 3/3/20.
//  Copyright © 2020 ArturoArriaga.IO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let someView: UIView = {
        let v = UIView()
        v.backgroundColor = .green
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(someView)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleController))
        
        NSLayoutConstraint.activate([
            someView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            someView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            someView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }
    
    @objc fileprivate func handleController() {
        let svc = SecondViewController()
        svc.modalPresentationStyle = .fullScreen
        self.navigationController?.present(svc, animated: true)
    }
    
}


